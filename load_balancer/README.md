# Load Balancer and Web Server Redundancy Setup

This project involves setting up a high-availability web stack with multiple web servers and a load balancer using **HAProxy**. The aim is to increase the redundancy and reliability of the web infrastructure while ensuring the system can handle higher traffic by distributing requests between multiple web servers.

The setup consists of the following components:
- **Two web servers**: `web-01` and `web-02`.
- **One load balancer**: `lb-01` (HAProxy).

## Table of Contents
1. [Prerequisites](#prerequisites)
2. [Tasks Overview](#tasks-overview)
   - [Task 0: Double the Number of Web Servers](#task-0-double-the-number-of-web-servers)
   - [Task 1: Install and Configure the Load Balancer](#task-1-install-and-configure-the-load-balancer)
3. [Resources](#resources)
4. [File Structure](#file-structure)
5. [Requirements](#requirements)

---

## Prerequisites

- **Ubuntu 16.04 LTS** (or equivalent) installed on all servers.
- **Bash** knowledge for automation scripts.
- **SSH access** to the servers: `web-01`, `web-02`, and `lb-01`.
- Basic understanding of **Nginx** and **HAProxy**.

## Tasks Overview

### Task 0: Double the Number of Web Servers
In this task, you are required to configure a new web server (`web-02`) to match the configuration of an existing web server (`web-01`). This will provide redundancy and allow us to handle more traffic. You will also modify Nginx to include a custom HTTP response header to identify which web server is responding to requests.

**Requirements:**
- Configure Nginx on `web-01` and `web-02` to include a custom header (`X-Served-By`).
- The value of the header should be the hostname of the server.
- Automate the setup using a bash script `0-custom_http_response_header.sh`.

Example output:
```bash
$ curl -sI 34.198.248.145 | grep X-Served-By
X-Served-By: 03-web-01
