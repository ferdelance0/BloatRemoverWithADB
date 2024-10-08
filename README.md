# Xiaomi Bloatware Remover Script

## Description

This script automates the process of removing bloatware from Xiaomi devices. It is a batch file (.bat) that uses ADB (Android Debug Bridge) to uninstall pre-installed system apps, which are not essential for the functioning of your device. This script is meant to be run from a PC while the device is connected via USB.

### Disclaimer

- **Warning**: Removing certain system apps may lead to instability or unexpected behavior on your device. Ensure you know what you are removing.
- **Backup**: It is recommended to back up your device before proceeding.
- **Warranty**: Use at your own risk. Removing system apps may void your device warranty.

## Requirements

- A PC running Windows
- Xiaomi device with USB Debugging enabled
  - To enable USB Debugging:
    1. Go to **Settings** > **About phone** and tap on **MIUI version** 7 times to enable Developer Mode.
    2. Go to **Settings** > **Additional settings** > **Developer options** > Enable **USB Debugging**.

## How to Use

1. **Download BloatRemoverWithADB**

   - Clone the BloatRemoverWithADB repo

2. **Prepare Your Device**

   - Enable USB Debugging on your Xiaomi device as described in the **Requirements** section.
   - Connect your Xiaomi device to the PC using a USB cable.
   - Ensure your device is detected by ADB:
     ```bash
     adb devices
     ```

3. **Run the Script**
   - Extract the ADB platform tools and place the batch file (`bloatremover.bat`) in the same directory as `adb.exe`.
   - Open a command prompt and navigate to the folder where the script is located.
   - Run the script by typing:
     ```bash
     bloatremover.bat
     ```
   - The script will begin uninstalling unnecessary system apps.

## Customization

If you want to customize the list of apps to remove:

1. Open the `bloatremover.bat` file in a text editor.
2. You will see a list of app package names. Comment out or remove any apps you want
3. Download the package names app to review the App names to package names
