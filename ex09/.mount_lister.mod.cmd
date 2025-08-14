savedcmd_mount_lister.mod := printf '%s\n'   mount_lister.o | awk '!x[$$0]++ { print("./"$$0) }' > mount_lister.mod
