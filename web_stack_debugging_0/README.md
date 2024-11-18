# Web Stack Debugging 0

This project focuses on debugging web servers inside Docker containers. The goal is to ensure that Apache serves a page containing "Hello Holberton" when accessed at the root URL.

## How to Run

1. Clone the repository.
2. Run the Docker container.
3. Execute the `0-give_me_a_page` script to fix any issues with Apache and create the "Hello Holberton" page.
4. Access the page by visiting `http://localhost:8080` in a browser or by using `curl 0:8080`.

## Requirements

- Ubuntu 14.04 LTS
- Docker
- Bash

## File Structure

- `0-give_me_a_page`: Bash script to configure the Apache web server.
- `README.md`: This file.
