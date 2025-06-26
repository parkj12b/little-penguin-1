#include <linux/module.h>
#include <linux/kernel.h>
#include <linux/init.h>
#include <linux/fs.h>
#include <linux/miscdevice.h>
#include <linux/uaccess.h>

#define LOGIN "minsepar\n"
#define LOGIN_LEN (sizeof(LOGIN) - 1)

static ssize_t fortytwo_read(struct file *file, char __user *buf,
		size_t len, loff_t *ppos)
{
	return simple_read_from_buffer(buf, len, ppos, LOGIN, LOGIN_LEN);
}

static ssize_t fortytwo_write(struct file *file,
		const char __user *buf, size_t len, loff_t *ppos)
{
	char kbuf[LOGIN_LEN];

	if (len != LOGIN_LEN)
		return -EINVAL;

	if (copy_from_user(kbuf, buf, LOGIN_LEN))
		return -EINVAL;

	if (memcmp(kbuf, LOGIN, LOGIN_LEN) != 0)
		return -EINVAL;

	return len;
}

static const struct file_operations fortytwo_fops = {
	.owner = THIS_MODULE,
	.read = fortytwo_read,
	.write = fortytwo_write,
};


static struct miscdevice hello_dev = {
	.minor = MISC_DYNAMIC_MINOR,
	.name = "fortytwo",
	.fops = &fortytwo_fops,
	.mode = 0666,
};


static int __init fortytwo_init(void) {
	int ret = misc_register(&hello_dev);

	if (ret)
		pr_err("fortytwo: misc_register failed %d\n", ret);
	else
		pr_info("fortytwo: registered with dynamic minor %d\n",
				hello_dev.minor); 

	return ret;
}

static void __exit fortytwo_exit(void) {
	misc_deregister(&hello_dev);
	printk(KERN_INFO "Cleaning up module.\n");
}

module_init(fortytwo_init);
module_exit(fortytwo_exit);

MODULE_LICENSE("GPL");
MODULE_AUTHOR("Minseo Park");
MODULE_DESCRIPTION("fortytwo that accepts minsepar");
MODULE_VERSION("0.1");

