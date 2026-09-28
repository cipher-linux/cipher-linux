# Installing CIPHER Linux

This guide walks you through downloading, verifying, and installing CIPHER Linux - no prior Linux experience needed.

## 1. Download the ISO

Grab the latest release candidate from the [Releases page](https://github.com/cipher-linux/cipher-linux/releases) and download the latest release's three files: the `.iso`, `.iso.sha256`, and `.iso.asc`. The ISO itself is hosted on Archive.org (linked from the release notes) since it's too large for GitHub.

## 2. Verify your download (recommended)

This confirms the ISO wasn't corrupted or tampered with. Open a terminal in the folder with all three files, then run the two commands below - swap in the actual filenames you downloaded:

```bash
sha256sum -c cipher-linux-<version>.iso.sha256
gpg --verify cipher-linux-<version>.iso.asc cipher-linux-<version>.iso
```
you should see `OK` for the checksum. The GPG step will show "Good signature" once you've imported the CIPHER Linux signing key.

## 3. Create a bootable USB drive

You'll need a USB drive (8GB or larger it will be erased). Use one of:
- **Balena Etcher** (Windows/macOS/Linux, easiest for beginners) - [balena.io/etcher](https://www.balena.io/etcher)
- **Rufus** (Windows only) - [rufus.ie](https://rufus.ie)
- **dd** (Linux/macOS, terminal):
```bash
sudo dd if=cipher-linux-<version>.iso of=/dev/sdX bs=4M status=progress
```
Replace `/dev/sdX` with your actual USB device double-check this with `lsblk` first, since a wrong device name can erase the wrong drive.

## 4. Boot from the USB

Restart your computer with the USB plugged in, and enter your boot menu (usually F12, F2, Esc, or Del depending on your machine - check your manufacturer's key). Select the USB drive to boot from it. 

You'll land on the CIPHER Linux GRUB menu. select **"CIPHER Linux"** to boot into the live desktop.

## 5. Try it live (optional)

Once booted, you're running CIPHER Linux entirely from the USB - nothing on your hard drive is touched yet. Explore the desktop, and check that Wi-Fi and display work on your hardware before committing to install. You can also double-click **CIPHER Welcome** on the desktop to open a guided menu of Linux and security topics.

## 6. Install with Calamares

Double-click the **install CIPHER Linux** icon on the desktop. Calamares will walk you through:
1. **Language** - pick your preferred language
2. **Location** - sets your timezone
3. **Keyboard layout**
4. **Partitions** - choose "Erase disk" for a simple single-OS install, or "Manual" if you want to dual-boot (back up your data first either way)
5. **User account** - set your name, username, and password
6. **Summary** - review your choices, then click **Install**

Installation takes 10-20 minutes depending on your hardware. Once done, restart and remove the USB drive. 

## 7. First boot

After Installing, you'll find **CIPHER Welcome** on your desktop. Double-click it to open the guided learning menu, which covers Linux basics, networking, system administration, security, forensics, DevOps and CTF Practice, with a suggested first step for each. It's a good place to start if you're not sure what to try first.

## Troubleshooting

- **Won't boot from USB** - make sure Secure Boot is disabled in your BIOS/UEFI settings.
- **Black screen on boot** - try selecting the "Advanced options" entry from the GRUB menu for alternate boot parameters.
- **Wi-Fi not working live** - CIPHER Linux includes firmware packages for broad hardware support, but some very new or obscure wireless chipsets may still need a manual driver. Open an issue if you hit this. 

Questions or issues? Open an [issue](https://github.com/cipher-linux/cipher-linux/issues) - we're actively testing release and want to hear about anything that doesn't work as expected. 
