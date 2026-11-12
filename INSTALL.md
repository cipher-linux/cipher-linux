# Installing CIPHER Linux

This guide walks you through downloading, verifying, and installing CIPHER Linux - no prior Linux experience needed.

## What you need 
- A computer (or virtual machine) that can boot from USB or ISO, 64-bit (x86_64)
- A USB drive of 8GB or larger (it will be erased)
- 4GB of RAM or more is recommended for the live session. 2 GB is enough to boot, but some optional tools may fail to install while running live
- A Backup of anything important on the machine you are installing to

## 1. Download the ISO

Grab the latest release candidate from the [Releases page](https://github.com/cipher-linux/cipher-linux/releases) and download the latest release's three files: the `.iso`, `.iso.sha256`, and `.iso.asc`. The ISO itself is hosted on Archive.org (linked from the release notes) since it's too large for GitHub. The `.sha256` and `.asc` files are attached to the GitHub release.

## 2. Verify your download (recommended)

This confirms the ISO wasn't corrupted or tampered with. First, import the CIPHER Linux signing key that matches your release.

**For rc4 and later (including RC5):**

```bash
curl -sSL https://raw.githubusercontent.com/cipher-linux/cipher-linux/main/cipher-linux-signing-key-2.asc | gpg --import
```

Check that the fingerprint matches:

```bash
gpg --fingerprint 8A3F56EB7DF1265b
```
`D033 F496 8BFA 3FC6 E486 5A01 8A3F 56EB 7DF1 265B`

**For rc2 and rc3:**

```bash 
curl -sSL https://raw.githubusercontent.com/cipher-linux/cipher-linux/main/cipher-linux-signing-key.asc | gpg --import
```

Check that the fingerprint it shows matches:

```bash
gpg --fingerprint 2B2C7B5EA01E52DC
```
`49DF D2B3 26AF 3564 8255 D593 2B2C 7B5E A01E 52DC`

Then whichever key you imported, open a terminal in the folder with all three downloaded files and run the two commands below, swapping in the actual filenames you downloaded: 

```bash
sha256sum -c cipher-linux-<version>.iso.sha256
gpg --verify cipher-linux-<version>.iso.asc cipher-linux-<version>.iso
```
you should see `OK` for the checksum and "Good Signature" for the GPG step. GPG may also warn that the key isn't certified with a trusted signature - that's normal for a new key, and matching the fingerprint above is what matters.

## 3. Create a bootable USB drive

You'll need a USB drive (8GB or larger it will be erased). Use one of:
- **Balena Etcher** (Windows/macOS/Linux, easiest for beginners) - [balena.io/etcher](https://www.balena.io/etcher)
- **Rufus** (Windows only) - [rufus.ie](https://rufus.ie)
- **dd** (Linux/macOS, terminal):
```bash
sudo dd if=cipher-linux-<version>.iso of=/dev/sdX bs=4M status=progress
```
Replace `/dev/sdX` with your actual USB device. Double-check this with `lsblk` first, since a wrong device name can erase the wrong drive.

## 4. Boot from the USB

Restart your computer with the USB plugged in, and enter your boot menu (usually F12, F2, Esc, or Del depending on your machine - check your manufacturer's key). Select the USB drive to boot from it. 

You'll land on the CIPHER Linux GRUB menu. Select **"CIPHER Linux"** to boot into the live desktop. The menu also has a **Memory Diagnostic Tool** under Utilities if you want to test you RAM.

## 5. Try it live (optional)

Once booted, you're running CIPHER Linux entirely from the USB - nothing on your hard drive is touched yet. Explore the desktop, and check that Wi-Fi and display work on your hardware before committing to install. You can also double-click **CIPHER Welcome** on the desktop to open a guided menu of Linux and security topics.

## 6. Install with Calamares

Double-click the **install CIPHER Linux** icon on the desktop. Calamares will walk you through:
1. **Language** - pick your preferred language
2. **Location** - sets your timezone
3. **Keyboard layout**
4. **Partitions** - choose "Erase disk" for a simple single-OS install, or "Manual" if you want to dual-boot (back up your data first either way). See the encryption note below
5. **User account** - set your name, username, and password
6. **Summary** - review your choices, then click **Install**

Installation takes 10-20 minutes depending on your hardware. Once done, restart and remove the USB drive. 

## Optional: encrypt your disk

On the Partitions page, with **Erase disk** selected, tick **Encrypt system** and enter a passphrase twice. This encrypts your whole system, so nobody can read your files by taking the drive out of your computer. 

Things to know: 
- You will type this passphrase every time you start the computer, before the login screen
- **There is no recovery if you forget it.** Your data cannot be unlocked without it, so keet it somewhere safe
- Encryption is only offered with **Erase disk**, not with Manual partitioning
- Encryption protects a computer that is switched off or lost. It does not protect a computer that is already unlocked and running

## 7. First boot

After Installing, you'll find **CIPHER Welcome** on your desktop. Double-click it to open the guided learning menu, which covers Linux basics, networking, system administration, security, forensics, DevOps and CTF Practice, with a suggested first step for each. It's a good place to start if you're not sure what to try first.

Extra tools are optional. Add the ones you want (`cipher-admin`, `cipher-network`, `cipher-security`, `cipher-forensics`, `cipher-dev`, `cipher-devops`) after installing to disk.

## Troubleshooting

- **Won't boot from USB** - make sure Secure Boot is disabled in your BIOS/UEFI settings.
- **Black screen on boot** - try selecting the "Advanced options" entry from the GRUB menu for alternate boot parameters.
- **Wi-Fi not working live** - CIPHER Linux includes firmware packages for broad hardware support, but some very new or obscure wireless chipsets may still need a manual driver. Open an issue if you hit this. 
- **A package fails to install in the live session** - the live system keeps changing in RAM, so on machines with little memory large packages such as `cipher-forensics` can run out of space. Install CIPHER Linux on disk first, then add the package.
- **Forget your disk passphrase** - it cannot be recovered. You will need to reinstall.

Questions or issues? Open an [issue](https://github.com/cipher-linux/cipher-linux/issues) - we're actively testing release and want to hear about anything that doesn't work as expected. 
