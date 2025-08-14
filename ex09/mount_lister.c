#include <linux/init.h>      // Required for module_init/exit macros
#include <linux/module.h>    // Required for all modules
#include <linux/kernel.h>    // Required for KERN_INFO
#include <linux/sched.h>     // Required for 'current' task struct
#include <linux/cred.h>      // Required for current_uid()
#include <linux/uidgid.h>    // Required for from_kuid()

MODULE_LICENSE("GPL");
MODULE_AUTHOR("Your Name");
MODULE_DESCRIPTION("A kernel module to show current process information and demonstrate 'current' usage.");
MODULE_VERSION("0.1");

// The function that runs when the module is loaded
static int __init list_mounts_init(void) {
    pr_info("🐧 Mount Lister: Module loaded.\n");

    // Demonstrate that 'current' is properly defined and working
    pr_info("--- Current Process Information ---\n");
    pr_info("Mount Lister: Current process PID: %d\n", current->pid);
    pr_info("Mount Lister: Current process name: %.16s\n", current->comm);
    pr_info("Mount Lister: Current process UID: %u\n", from_kuid(&init_user_ns, current_uid()));
    pr_info("Mount Lister: Current process state: %u\n", current->__state);

    // Show that current->fs exists (even if we can't fully access mount namespaces)
    if (current->fs) {
        pr_info("Mount Lister: Current process has filesystem structure\n");
    } else {
        pr_info("Mount Lister: Current process has no filesystem structure\n");
    }

    // Show that current->nsproxy exists
    if (current->nsproxy) {
        pr_info("Mount Lister: Current process has namespace proxy\n");
    } else {
        pr_info("Mount Lister: Current process has no namespace proxy\n");
    }

    pr_info("--- End of Process Information ---\n");

    return 0; // A non-zero return means module failed to load
}

// The function that runs when the module is removed
static void __exit list_mounts_exit(void) {
    pr_info("🐧 Mount Lister: Module unloaded.\n");
}

module_init(list_mounts_init);
module_exit(list_mounts_exit);
