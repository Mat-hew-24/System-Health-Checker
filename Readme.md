# 🖥️ System Report Automation Script

A simple Bash script that generates a real-time **system resource usage report** as a PDF using [Glances](https://nicolargo.github.io/glances/), captures it via **headless Google Chrome**, and sends it to your email.

## 📌 Features

- Launches Glances in web server mode
- Captures a live system status page to PDF
- Automatically emails the report
- Cleans up by stopping Glances

## 🛠️ Technologies Used

- `bash`
- `glances` (system monitor)
- `google-chrome` (headless mode)
- `mailx` (for sending email)

## 📦 Requirements

Make sure the following tools are installed:

- `glances`
- `google-chrome` or `chromium-browser`
- `mailx`
- An SMTP-configured mail system (e.g., `msmtp` or `ssmtp`)

Install Glances (if not already installed):

```bash
pip install glances
