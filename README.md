# Linux From Scratch

Personal note to build owner linux distribution from scratch. This work follows content from [LFS site](http://www.linuxfromscratch.org/).

## Note struct

```bash
.
├── README.md
└── scripts
    ├── prepare
    │   ├── 00-version-check.sh
    │   ├── 01-new-partition.sh
    │   ├── 02-packages-list.sh
    │   ├── 03-tool-directories.sh
    │   ├── 04-lfs-user.sh
    │   ├── 05-setup-user-env.sh
    │   └── wget-list
    └── temporary-system
        ├── 06-checking-system-info.sh
        ├── 07-binutils.sh
        └── 08-gcc.sh
```

## Notes

Require `export LFS=/mnt/lfs` for OS building session.

## Sequel

1. Prepare
2. Temporary System
