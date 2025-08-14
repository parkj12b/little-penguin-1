#include <linux/init.h>      // Required for module_init/exit macros
#include <linux/module.h>    // Required for all modules
#include <linux/kernel.h>    // Required for KERN_INFO
#include <linux/sched.h>     // Required for 'current' task struct
#include <linux/fs.h>        // Required for file system operations
#include <linux/proc_fs.h>   // Required for /proc filesystem
#include <linux/seq_file.h>  // Required for sequential file operations
#include <linux/uaccess.h>   // Required for copy_from_user

MODULE_LICENSE("GPL");
MODULE_AUTHOR("Your Name");
MODULE_DESCRIPTION("A kernel module to list mount points");
MODULE_VERSION("0.1");

// Function to read and display mount information from /proc/mounts
static void read_proc_mounts(void) {
    struct file *f;
    char *buf;
    loff_t pos = 0;
    int bytes_read;
    
    // Allocate buffer for reading
    buf = kmalloc(PAGE_SIZE, GFP_KERNEL);
    if (!buf) {
        pr_err("Mount Lister: Failed to allocate buffer\n");
        return;
    }
    
    // Open /proc/mounts
    f = filp_open("/proc/mounts", O_RDONLY, 0);
    if (IS_ERR(f)) {
        pr_err("Mount Lister: Failed to open /proc/mounts: %ld\n", PTR_ERR(f));
        kfree(buf);
        return;
    }
    
    pr_info("--- Mount Points from /proc/mounts ---\n");
    
    // Read the file in chunks
    while ((bytes_read = kernel_read(f, buf, PAGE_SIZE - 1, &pos)) > 0) {
        buf[bytes_read] = '\0';  // Null terminate
        
        // Print each line (mount point)
        char *line = buf;
        char *next_line;
        
        while ((next_line = strchr(line, '\n')) != NULL) {
            *next_line = '\0';  // Null terminate the line
            if (strlen(line) > 0) {
                pr_info("Mount: %s\n", line);
            }
            line = next_line + 1;
        }
        
        // Handle last line if it doesn't end with newline
        if (strlen(line) > 0) {
            pr_info("Mount: %s\n", line);
        }
    }
    
    pr_info("--- End of Mount Points ---\n");
    
    // Clean up
    filp_close(f, NULL);
    kfree(buf);
}

// The function that runs when the module is loaded
static int __init list_mounts_init(void) {
    pr_info("🐧 Mount Lister: Module loaded.\n");
    pr_info("Mount Lister: Current process PID: %d, name: %.16s\n", 
            current->pid, current->comm);
    
    // Read mount points from /proc/mounts
    read_proc_mounts();

    return 0; // A non-zero return means module failed to load
}// The function that runs when the module is removed
static void __exit list_mounts_exit(void) {
    pr_info("🐧 Mount Lister: Module unloaded.\n");
}

module_init(list_mounts_init);
module_exit(list_mounts_exit);
