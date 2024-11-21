# Nginx Port 80 Debugging and Fix

## Problem Overview

The objective is to ensure that Nginx is running on port 80 on an Ubuntu container. In the scenario provided, the Nginx service is not properly listening on port 80, and the goal is to debug and resolve this issue by writing a Bash script.

### Steps:

1. **Debug the issue**: The problem is that `curl` is unable to connect to `0:80`, which indicates that Nginx is either not running or not listening on the correct IP and port.
2. **Fix the issue**: You need to write a Bash script that configures the server to meet the following criteria:
    - Nginx must be running.
    - Nginx must be listening on port 80 for all active IPv4 addresses of the server.
3. **Test the solution**: After running the script, ensure that you can access Nginx on port 80 and see the "Welcome to nginx!" page.

## Requirements

- **Nginx must be running**: The service should be active and properly configured.
- **Listening on port 80**: It must be listening on port 80 for all the server’s active IPv4 addresses.

## Debugging Process

The initial state is as follows:
```bash
root@966c5664b21f:/# curl 0:80
curl: (7) Failed to connect to 0 port 80: Connection refused
