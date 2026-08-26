# Portable Chrome / Chromium Launcher

A lightweight cross-platform launcher that allows you to start an installed Chrome or Chromium browser using a browser profile stored alongside the launcher on a USB drive.

The project is designed for situations where you want to carry your browser profile between computers without carrying the browser executable itself.

## Features

- Cross-platform support for:
  - Windows
  - Ubuntu/Linux
- Automatically detects the installed Chrome/Chromium browser.
- Automatically detects the location of the launcher.
- No hard-coded USB drive letters or absolute paths.
- Stores the portable browser profile next to the launcher.
- Uses Chrome/Chromium's `--user-data-dir` option.
- Creates the required profile directory automatically.
- Keeps browser profile data separated from the system's default Chrome profile.
- Browser executable does not need to be stored on the USB drive.
- Simple one-click launcher for Windows.
- Shell-based launcher for Ubuntu/Linux.

## Project Structure

```text
portable-chrome-launcher/
│
├── Start.bat
├── Start.sh
├── .gitignore
├── README.md
│
├── ChromeProfile/
│   └── ...
│
└── Logs/
    └── ...