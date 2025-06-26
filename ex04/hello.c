#include <linux/module.h>
#include <linux/kernel.h>
#include <linux/init.h>
#include <linux/usb.h>

MODULE_LICENSE("GPL");
MODULE_AUTHOR("Minseo Park");
MODULE_DESCRIPTION("Hello world. Now auto load on hotplug - USB keyboard");
MODULE_VERSION("0.1");

#define USB_KBD_CLASS 0x03
#define USB_KBD_SUBCLASS 0x01
#define USB_KBD_PROTOCOL 0x01

static int kbd_probe(struct usb_interface *interface, const struct usb_device_id *id)
{
	printk(KERN_INFO "USB Keyboard plugged in\n");
	printk(KERN_INFO "Hello World!\n");
	return 0;
}

static void kbd_disconnect(struct usb_interface *interface)
{
	printk(KERN_INFO "USB Keyboard removed\n");
	printk(KERN_INFO "Cleaning up module.\n");
}

static struct usb_device_id kbd_table[] = {
	{ USB_INTERFACE_INFO(USB_KBD_CLASS, USB_KBD_SUBCLASS, USB_KBD_PROTOCOL) },
	{}
};
MODULE_DEVICE_TABLE(usb, kbd_table);

static struct usb_driver kbd_driver = {
	.name = "hello",
	.id_table = kbd_table,
	.probe = kbd_probe,
	.disconnect = kbd_disconnect,
};

module_usb_driver(kbd_driver);

