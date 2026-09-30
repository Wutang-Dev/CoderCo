# Incident 01: Ubuntu LVM Storage Exhaustion

**Environment:** Ubuntu Server VM running on Proxmox VE  
**Technology:** Linux, LVM, Proxmox  
**Status:** Resolved

## 1. Problem

While working on my CoderCo GitHub repository, I encountered an error when executing `git status`.

The terminal returned:

```
fatal: Unable to create '.git/index.lock':
write error: Out of diskspace
```

Initially, I suspected that the underlying Proxmox storage was full.

## 2. Investigation

I accessed the Proxmox host and investigated its storage configuration using:

```
pvesm status
lvs -a -o lv_name,vg_name,lv_size,data_percent,metadata_percent
qm list
```

The results indicated that Proxmox had sufficient available storage.

I then investigated the Ubuntu VM.

```
df -h
```

The output revealed that Ubuntu's root filesystem was 100% full.

Although the VM had a 32 GB virtual disk, the root filesystem was approximately 15 GB.

Next, I checked the LVM configuration:

```
sudo vgs
```

This revealed approximately 15 GB of unallocated space within the existing Ubuntu volume group.

## 3. Root cause

Ubuntu's root logical volume had been allocated approximately half of the available LVM volume group capacity.

Consequently, the root filesystem became full even though the underlying virtual disk had additional capacity.

## 4. Resolution

After identifying the available space, I expanded the root logical volume and filesystem:

```
sudo lvextend -r -l +100%FREE /dev/ubuntu-vg/ubuntu-lv
```

The `-r` option automatically resized the filesystem alongside the logical volume.

## 5. Verification

I verified the expansion using:

```
df -h /
```

The root filesystem had successfully expanded to approximately 30 GB, with 12 GB available.

I subsequently verified that Git could operate normally.

## 6. Lessons learned

- Proxmox storage allocation and guest filesystem usage are different.
- A virtual disk can have unused capacity even when its guest filesystem is full.
- LVM provides flexibility when managing Linux storage.
- Investigating the root cause can prevent unnecessary VM rebuilds.

**Outcome:** Successfully expanded the live filesystem without reinstalling Ubuntu.