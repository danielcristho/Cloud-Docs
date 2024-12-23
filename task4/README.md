# Serving Applications From Docker Image

## Case 1

Description

Create and run simple PHP pages.

## Case 2

Description

Build image and run container base on Alpine Linux, installs essential packages for a VNC-based desktop environment, sets up noVNC for browser-based access, configures users and services, and exposes required ports for remote access.

## Case 3

Description

Creates and run container using the Nginx Alpine image, adds custom Nginx configuration files, and copies static HTML content into the web server's root directory for serving web pages.

## Case 4

Description

Build image and run container using the Nginx Alpine image, installs PHP-FPM and Supervisor, adds custom Nginx configurations, copies static HTML content and a startup script, and sets `/start.sh` as the entry point.

## Case 5

Description

This project using a multi-stage build to create a Vue.js application. In the first stage, it installs dependencies, copies the application code, and builds the project using Node.js. In the second stage, it serves the production-ready files using Nginx.

The architecture:

![tugas4](https://github.com/user-attachments/assets/34bbb084-34eb-4c19-aaaa-1402d2a38ed6)
