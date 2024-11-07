# File Transfer Script

## Description

This project contains a Bash script that transfers a file from a local machine to a remote server. The file is transferred to the user's home directory (`~`) on the server using the `scp` (secure copy) command. The script uses SSH key-based authentication for secure access.

The script ensures that the server's host key is not checked (to avoid manual intervention), and it will transfer the file to the remote server without prompting for user confirmation. It is useful for automating the process of file transfers, especially when deploying files to a remote server.

## Requirements

- **Bash**: The script is written in Bash and is intended to be executed on an Ubuntu 16.04 LTS server or any other Unix-like environment that supports Bash.
- **SSH Key Authentication**: The script requires an SSH private key to authenticate to the remote server. Ensure that the private key has been added to the `~/.ssh` directory and has proper permissions (e.g., `chmod 600`).
- **SCP**: The script uses the `scp` command for secure file transfer.
- **Permissions**: The Bash script must be executable.

## Files

- **0-transfer_file**: The main script to transfer a file to a remote server.
- **README.md**: This file containing the project description and usage instructions.

## Usage

To use the script, run it with four arguments:

1. **PATH_TO_FILE**: The local path to the file you want to transfer.
2. **IP**: The IP address of the remote server.
3. **USERNAME**: The username on the remote server to authenticate as.
4. **PATH_TO_SSH_KEY**: The path to the SSH private key used for authentication.

### Example Command

```bash
./0-transfer_file /path/to/some_page.html 75.101.223.254 ubuntu /path/to/ssh/key
