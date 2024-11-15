# System Engineering & DevOps: Firewall Setup

Welcome to the **System Engineering & DevOps** repository! This project covers essential configurations and best practices related to firewall setup, focusing on securing your web servers using **UFW** (Uncomplicated Firewall).

## Project Overview

In this project, we will walk you through configuring the **UFW firewall** on a web server (`web-01`) to block all incoming traffic, except for necessary services such as **SSH (Port 22)**, **HTTP (Port 80)**, and **HTTPS (Port 443)**. This is an important step in securing your servers and ensuring that only the required traffic is allowed.

### Key Objectives

- **Install and configure UFW** firewall on `web-01` to restrict incoming traffic.
- **Allow essential ports**: SSH (22), HTTP (80), and HTTPS (443).
- **Block all other incoming traffic** to minimize exposure to potential attacks.

## Project Structure

Here’s a quick overview of the directory structure:

```plaintext
alu-system_engineering-devops/
│
├── firewall/
│   └── 0-block_all_incoming_traffic_but  # Firewall configuration script
│
└── other directories and files...       # Additional configurations and code
