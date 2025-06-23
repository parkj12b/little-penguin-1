#include <linux/module.h>
#include <linux/kernel.h>
#include <linux/delay.h>
#include <linux/slab.h>

MODULE_LICENSE("GPL");
MODULE_DESCRIPTION("Kernel module that delays 10 micro seconds for x \
	times given by the programmer");
MODULE_AUTHOR("Minseo Park <minsepar@student.42seoul.kr>");
MODULE_VERSION("1.0");

static void do_work(int *my_int)
{
	int i;

	for (i = 0; i < *my_int; ++i) {
		udelay(10);
	}

	*my_int = (*my_int + 1) * *my_int;
}

static int __init my_init(void)
{
	int x = 10;

	do_work(&x);
	return 0;
}

static void __exit my_exit(void)
{
	pr_info("Cleaning up module\n");
}

module_init(my_init);
module_exit(my_exit);
