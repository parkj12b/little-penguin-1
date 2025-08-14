#include <linux/module.h>
#include <linux/kernel.h>
#include <linux/init.h>
#include <linux/debugfs.h>
#include <linux/jiffies.h>
#include <linux/uaccess.h>
#include <linux/slab.h>
#include <linux/mutex.h>
#include <linux/fs.h>

#define LOGIN "minsepar\n"
#define LOGIN_LEN (sizeof(LOGIN) - 1)

MODULE_LICENSE("GPL");
MODULE_AUTHOR("Minseo Park");
MODULE_DESCRIPTION("Hello world");
MODULE_VERSION("0.1");

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

static ssize_t jiffies_read(struct file *file,
		char __user *buf, size_t len, loff_t *ppos)
{
	char kbuf[32];
	int n;

	n = snprintf(kbuf, sizeof(kbuf), "%lu\n", jiffies);
	return simple_read_from_buffer(buf, len, ppos, kbuf, n); 
}

static char *foo_buffer;

static DEFINE_MUTEX(foo_mutex);

static ssize_t foo_read(struct file *file,
		char __user *buf, size_t len, loff_t *ppos)
{
	ssize_t ret;

	if (mutex_lock_interruptible(&foo_mutex))
		return -ERESTARTSYS;

	ret = simple_read_from_buffer(buf, len, ppos, foo_buffer, PAGE_SIZE);

	mutex_unlock(&foo_mutex);
	return ret;
}

static ssize_t foo_write(struct file *file,
		const char __user *buf, size_t len, loff_t *ppos)
{
	ssize_t ret;

	if (!capable(CAP_SYS_ADMIN)) {
		printk(KERN_WARNING "foo: Write attemp by non-root user. Permission denied.\n");
		return -EACCES;
	}

	if (mutex_lock_interruptible(&foo_mutex))
	       return -ERESTARTSYS;

	if (simple_read_from_buffer(buf, PAGE_SIZE, ppos, foo_buffer, len)) {
		ret = -EFAULT;
	}

	mutex_unlock(&foo_mutex);	
	return len;
}

static const struct file_operations fortytwo_fops = {
	.owner = THIS_MODULE,
	.read = fortytwo_read,
	.write = fortytwo_write,
};

static const struct file_operations jiffies_fops = {
	.owner = THIS_MODULE,
	.read = jiffies_read,
};

static const struct file_operations foo_fops = {
	.owner = THIS_MODULE,
	.read = foo_read,
	.write = foo_write,
};

struct dentry *debug;
struct dentry *id;
struct dentry *jiffies_dentry;
struct dentry *foo;

static int __init hello_init(void) {
	printk(KERN_INFO "Hello World!\n");
	debug = debugfs_create_dir("fortytwo", NULL);
	
	foo_buffer = kzalloc(PAGE_SIZE, GFP_KERNEL);
	if (!debug)
		return -ENOMEM;
	if (!foo_buffer) {
		debugfs_remove(debug);
		return -ENOMEM;	
	}
	id = debugfs_create_file("id", 666, debug, NULL, &fortytwo_fops);
	jiffies_dentry = debugfs_create_file("jiffies", 444, debug, NULL, &jiffies_fops); 
	foo = debugfs_create_file("foo", 644, debug, NULL, &foo_fops); 
	
	pr_info("Hello module loaded");

	return 0;
}

static void __exit hello_exit(void) {
	debugfs_remove(id);
	debugfs_remove(jiffies_dentry);

	debugfs_remove(debug);	
	printk(KERN_INFO "Cleaning up module.\n");
}


module_init(hello_init);
module_exit(hello_exit);
