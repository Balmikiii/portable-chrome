# Portable Chrome / Chromium Launcher

A lightweight cross-platform launcher that lets you run your installed Chrome or Chromium browser with a profile stored on a USB drive.

Designed for students, developers, IT professionals, and anyone who regularly works across multiple computers.

## Features

- Supports Windows and Ubuntu/Linux
- Automatically detects installed Chrome/Chromium
- Automatically detects the USB drive location
- No hard-coded drive letters or absolute paths
- Stores the browser profile alongside the launcher
- Keeps the portable profile separate from the system profile
- Browser itself does not need to be stored on the USB drive
- Simple launcher for Windows and Linux

## Project Structure

portable-chrome-launcher/
│
├── chrome.bat
├── chrome.sh
├── .gitignore
├── README.md
│
└── ChromeProfile/
    └── ...

## Who Can Use It?

Useful for:

- 🎓 Students
- 💻 Developers
- 🛠️ IT professionals
- 🧪 Testing environments
- 📚 Study setups
- 🔄 Users who frequently switch between computers

## How It Helps

The launcher automatically detects its own location, so you don't need to change the script when the USB drive gets a different drive letter.

Example:

PC 1 → E:\PortableChrome\
PC 2 → F:\PortableChrome\
PC 3 → G:\PortableChrome\

No manual path changes are required.

The portable profile can keep normal browser data such as:

- Bookmarks
- History
- Settings
- Extensions

## How It Works

The launcher detects a Chrome/Chromium installation on the host computer and starts it using the USB-based profile with:

--user-data-dir

The browser remains installed on the computer; only the profile is stored on the USB drive.

## Usage

### Windows

Make sure Chrome is installed, then double-click:

chrome.bat

### Ubuntu / Linux

Make the script executable:

chmod +x chrome.sh

Then run:

./chrome.sh

## Requirements

- Chrome or Chromium must already be installed on the computer.
- The USB drive must be writable for profile changes.
- Different browser versions may behave differently.

## Security

A browser profile may contain private information.

- Keep the USB encrypted if it contains sensitive data.
- Do not commit `ChromeProfile/` to GitHub.
- Do not share your portable profile.
- Avoid using it on untrusted computers.
- Close the browser before removing the USB drive.
