# Serving Applications Using Docker Compose

## Case 1

Description

This Docker Compose sets up an Nginx web server container to serve HTML and CSS files from the `html` directory on port 9999, using custom Nginx configurations from `nginx-conf`.

## Case 2

Description

This Docker Compose sets up an Nginx web server container with privileged mode to serve secured content over HTTPS (port 443) and HTTP (port 80), using certificates from `certs`, HTML files from `html`, a secure Nginx configuration from `nginx-conf/nginx.secure.conf`.

## Case 3

Description

This Docker Compose will creates a WordPress environment with a MySQL database, phpMyAdmin for database management, WordPress as the CMS, and Nginx as the web server with SSL support, connecting all services through a Docker network named app-network and using volumes for persistent storage.

## Case 4

Description

This Docker Compose file sets up a development environment consisting of a MySQL 5.7 database, a custom-built application running on Apache, phpMyAdmin for database management, and an idle Alpine container for utility tasks, all connected through a network named example1-network.

## Case 5

Description

This Docker Compose will sets up a development environment to serve a Streamlit UI via the app service on port 8501, with Nginx acting as a reverse proxy for HTTP (80) and HTTPS (443) traffic, sharing configuration and SSL certificates from the `nginx` directory.

The architecture

![tugas3](https://github.com/user-attachments/assets/4a428854-d8e9-48e8-bef5-f2db2b21354c)
