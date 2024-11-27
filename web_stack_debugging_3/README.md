# WordPress Debugging and Automation with Puppet

## Project Overview

This project aims to troubleshoot and fix a `500 Internal Server Error` on a WordPress site running on a LAMP stack (Linux, Apache, MySQL, PHP). The task involves using `strace` to debug the issue, then fixing it by adjusting configurations (permissions, installed packages, etc.) and automating the fix using a Puppet manifest.

## Purpose

The goal of this project is to:

1. Use `strace` to identify the root cause of the `500 Internal Server Error`.
2. Fix the issue (e.g., incorrect file permissions, missing PHP extensions, etc.).
3. Automate the fix using a Puppet manifest so that it can be applied easily in the future.

## Requirements

- Ubuntu 14.04 LTS
- Puppet v3.4 (for applying manifests)
- A WordPress site running on a LAMP stack (Linux, Apache, MySQL, PHP)
- The `strace` tool for debugging

## Prerequisites

1. **Install Puppet**:
   Ensure Puppet is installed on the system where you will run the manifest:
   ```bash
   sudo apt-get update
   sudo apt-get install puppet
