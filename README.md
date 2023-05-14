# Node.js Unofficial Release Installer
This script allows you to easily download and install any version of Node.js available on the unofficial builds site.

The script uses `curl`, `jq`, `wget`, `tar`, and **`sudo`**

# Usage
1. Clone the repo
````
git clone https://github.com/kolezka/nuri.git
````
2. Make the file executable
```
chmod +x nuri/nuri.sh
```
3. Run the script
```
nuri/nuri.sh
```
4. The script will display a list of available Node.js versions. Enter the version you want to install

5. The script will then download the selected version, extract the files, and copy them to /usr/local. Finally, the script cleans up by removing the downloaded and extracted files.

