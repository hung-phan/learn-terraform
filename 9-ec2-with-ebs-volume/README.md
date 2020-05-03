# Setup mount volume

```bash
$ mkfs.ext4 /dev/xvdh
$ mkdir /data
$ mount /dev/xvdh /data
```

To automate the mounting when reboot ec2 instance:

```bash
$ vim /etc/fstab
```

```
/dev/xvdh /data ext4 defaults 0 0
```
