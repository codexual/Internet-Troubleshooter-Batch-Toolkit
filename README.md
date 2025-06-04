# Internet Troubleshooter Batch Toolkit

A comprehensive batch script toolkit for Windows that helps users troubleshoot and resolve common and advanced internet and network issues, as well as reset browser data (with strong warnings). This tool is organized with both beginner and advanced users in mind.

---

## Table of Contents

- [Overview](#overview)
- [Usage](#usage)
- [Menu Structure](#menu-structure)
  - [Basic Network Troubleshooting](#basic-network-troubleshooting)
  - [Browser Reset Tools](#browser-reset-tools)
  - [Advanced Network Tools](#advanced-network-tools)
- [Command Explanations](#command-explanations)
  - [Basic Network Commands](#basic-network-commands)
  - [Advanced Network Commands](#advanced-network-commands)
  - [Browser Reset Commands](#browser-reset-commands)
- [Warnings](#warnings)
- [Extending the Toolkit](#extending-the-toolkit)

---

## Overview

This batch script is designed to help users quickly diagnose and fix a variety of internet connectivity problems on Windows systems. It provides clear, menu-driven options for both basic and advanced troubleshooting, as well as the ability to reset user data for popular web browsers (useful for resolving browser-specific issues, but **destructive**).

---

## Usage

1. **Download or copy** the `internet_troubleshooter.bat` file to your Windows PC.
2. **Right-click** the file and select **Run as administrator** (required for most network commands).
3. **Follow the on-screen menus** to select the troubleshooting task you need.

---

## Menu Structure

### Basic Network Troubleshooting

These are safe, commonly recommended commands for fixing routine network problems like lost connectivity, DNS errors, or IP conflicts.

Options include:
- Release and renew your IP address.
- Flush the DNS cache.
- Reset the Windows Sockets catalog.
- Reset the TCP/IP stack.
- Run all of the above in one go.

### Browser Reset Tools

**Warning: These will permanently delete all your browser's data!**

You can:
- Reset Google Chrome, Microsoft Edge, Brave, Opera GX, or Firefox.
- Each option kills all running processes for that browser and deletes all user data (passwords, cookies, bookmarks, etc.).

### Advanced Network Tools

These options are for power users and IT professionals. They can resolve deeper or less common problems, but can also significantly change your system's configuration.

Options include:
- Disable and re-enable a network adapter.
- Clear the ARP cache.
- Release and renew IPv6 addresses.
- Show detailed network configuration.
- Run connectivity (ping) tests.
- Reset the `hosts` file to Windows defaults.
- Launch the Windows Network Troubleshooter.
- Reset the network route table.
- Reset Windows Firewall rules.
- Change your DNS server (supports Google, Cloudflare, and Quad9, for any adapter).
- Run all advanced commands in sequence.

---

## Command Explanations

### Basic Network Commands

- **ipconfig /release**  
  Releases your current IPv4 address, disconnecting from the network temporarily.

- **ipconfig /renew**  
  Requests a new IPv4 address from your DHCP server, reconnecting you to the network.

- **ipconfig /flushdns**  
  Clears your computer’s DNS resolver cache, helping fix problems with website access caused by outdated or incorrect DNS records.

- **netsh winsock reset**  
  Resets the Windows Sockets (Winsock) catalog to default, which can resolve issues caused by network software or malware.

- **netsh int ip reset**  
  Resets the TCP/IP stack to its default configuration, fixing persistent network problems.

### Advanced Network Commands

- **Disable/Enable Adapter**  
  Temporarily disables and then re-enables the selected network adapter (e.g., Wi-Fi or Ethernet).

- **arp -d \***  
  Clears the ARP cache (mapping between IP and MAC addresses), resolving certain LAN issues.

- **ipconfig /release6 and /renew6**  
  Releases and renews the IPv6 address from your DHCP server.

- **Show Network Configuration**  
  Displays all current network settings, including IP addresses, DNS, gateways, and more.

- **Ping Test**  
  Pings well-known IPs and domains to test basic network and internet connectivity.

- **Reset Hosts File**  
  Backs up and restores the Windows hosts file to its default state, fixing issues caused by custom or malicious entries.

- **Windows Network Troubleshooter**  
  Launches the built-in Windows tool to automatically diagnose and fix network problems.

- **route -f**  
  WARNING: Resets your routing table. Removes all static routes and may disrupt remote connections.

- **netsh advfirewall reset**  
  WARNING: Resets all Windows Firewall rules to default, removing all custom rules.

- **Change DNS Server**  
  Allows you to set DNS servers to Google (8.8.8.8/8.8.4.4), Cloudflare (1.1.1.1/1.0.0.1), or Quad9 (9.9.9.9/149.112.112.112), or revert to automatic (DHCP).

### Browser Reset Commands

Each browser reset option:
- Kills all running processes for that browser.
- Deletes all user data, including saved passwords, bookmarks, cookies, autofill, and other profile data.
- Flushes the DNS cache afterward.

Supported browsers: **Google Chrome, Microsoft Edge, Brave, Opera GX, Firefox**

---

## Warnings

- **Browser Resets are destructive!**  
  All browser-resident data will be lost. Make sure to back up anything important before using these options.

- **Advanced Network Tools can disrupt existing network setups.**  
  Use with caution, especially on business, enterprise, or remote systems.

- **Always run as administrator** for best results.

---

## Extending the Toolkit

Feel free to fork, modify, or extend this script. Contributions are welcome!

- Add logging or reporting features.
- Detect the most active network adapter automatically.
- Add more browser support or additional diagnostics.
- Improve adapter selection for non-English Windows versions.

---

**Disclaimer:**  
This toolkit is provided as-is, with no warranty. Use at your own risk. Always back up important data before performing destructive operations.

---
