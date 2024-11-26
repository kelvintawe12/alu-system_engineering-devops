# Web Stack Debugging 2

This repository contains a series of tasks related to debugging web server configurations and running software as different users, specifically focusing on Nginx and user permissions. The tasks aim to practice and reinforce the proper configurations for running processes with minimal privileges for enhanced security.

## Requirements

- All files should be compatible with **Ubuntu 14.04 LTS**.
- Ensure all files end with a new line.
- The project **must** include a `README.md` file at the root of the project folder.
- All Bash script files should be **executable** and **pass Shellcheck** without errors.
- Each Bash script must **run without errors** when executed.
- The **first line** of each Bash script should be exactly `#!/usr/bin/env bash`.
- The **second line** of each Bash script should be a comment explaining what the script is doing.

---

## Tasks

### Task 0: Run Software as Another User

**Description**:
In this task, you will write a script that runs a command (`whoami`) as another user. The goal is to understand how to execute commands as a non-root user with elevated privileges.

**Requirements**:
- Write a Bash script that accepts one argument, which is the user to run the command under.
- The script should execute the `whoami` command as the specified user.
- Example usage:
  ```bash
  $ ./0-iamsomeoneelse www-data
