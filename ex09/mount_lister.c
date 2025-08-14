#include <linux/init.h>      // Required for module_init/exit macros
#include <linux/module.h>    // Required for all modules
#include <linux/kernel.h>    // Required for KERN_INFO
#include <linux/sched.h>     // Required for 'current' task struct
#include <linux/cred.h>      // Required for current_uid()
#include <linux/uidgid.h>    // Required for from_kuid()
#include <linux/fs.h>        // Required for file system operations
#include <linux/mount.h>     // Required for vfsmount
#include <linux/nsproxy.h>   // Required for namespace proxy

MODULE_LICENSE("GPL");
MODULE_AUTHOR("Your Name");
MODULE_DESCRIPTION("A kernel module to list mount points");
MODULE_VERSION("0.1");

// The function that runs when the module is loaded
static int __init list_mounts_init(void) {
    struct vfsmount *root_mnt;
    
    pr_info("🐧 Mount Lister: Module loaded.\n");
    pr_info("--- Mount Points Information ---\n");
    
    // Get information about current process
    pr_info("Mount Lister: Current process PID: %d\n", current->pid);
    pr_info("Mount Lister: Current process name: %.16s\n", current->comm);
    
    // Try to get mount information through current process
    if (current->fs && current->fs->root.mnt) {
        root_mnt = current->fs->root.mnt;
        pr_info("Mount Lister: Found root mount point\n");
        
        // Print basic mount information
        if (root_mnt->mnt_sb && root_mnt->mnt_sb->s_type) {
            pr_info("Mount Lister: Root filesystem type: %s\n", 
                    root_mnt->mnt_sb->s_type->name);
        }
        
        // Try to print mount flags
        pr_info("Mount Lister: Root mount flags: 0x%x\n", root_mnt->mnt_flags);
        
    } else {
        pr_info("Mount Lister: Could not access root mount information\n");
    }
    
    // Try to access namespace information
    if (current->nsproxy && current->nsproxy->mnt_ns) {
        pr_info("Mount Lister: Mount namespace accessible\n");
        // Note: We can't safely iterate through mounts due to kernel restrictions
        pr_info("Mount Lister: (Direct mount iteration restricted in this kernel version)\n");
    } else {
        pr_info("Mount Lister: Mount namespace not accessible\n");
    }
    
    pr_info("--- End of Mount Information ---\n");

    return 0; // A non-zero return means module failed to load
}// The function that runs when the module is removed
static void __exit list_mounts_exit(void) {
    pr_info("🐧 Mount Lister: Module unloaded.\n");
}

module_init(list_mounts_init);
module_exit(list_mounts_exit);
