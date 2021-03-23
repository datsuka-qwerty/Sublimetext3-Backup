# This is my SublimeText3 settings.

__日本語版は[こちら](/README.jp.md)__


- [Files name format](#user-content-files-name-format)
- [Windows User](#user-content-windows-user)
	- [How to restore settings](#user-content-how-to-restore-settings)
	- [Install MSYS32](#user-content-install-msys32)
	- [Install node.js](#user-content-install-nodejs)
	- [Install CodeIntel](#user-content-install-codeintel)
- [Linux User](#user-content-linux-user)
	- [How to restore settings](#user-content-how-to-restore-settings-1)
	- [Install clnag](#user-content-install-clnag)
	- [Install node.js](#user-content-install-nodejs-1)
	- [Install CodeIntel](#user-content-install-codeintel-1)
- [CAUTION](#user-content-caution)

<a id="user-content-files-name-format"></a>
Files name format
-------------------------
All backup files name format are YYYY-MM-DD.


<a id="user-content-windows-user"></a>
Windows User
---------------------
<a id="user-content-how-to-restore-settings"></a>
How to restore settings
-------------------------
<font color="Tomato">__ATTENTION__</font> __These are assuming Windows.__  
As a prerequisite, you need to install __MSYS32__ , __node.js__ and __CodeIntel__.  
(EasyClangComplete needs clang, Linter needs node.js, CodeIntel needs SublimeCodeIntel.)  
__You need to change `USER` to your name each config files.__

1. Install PackageControll.
2. Replace Theme file then restart ST3.
3. Copy and paste other files.

<a id="user-content-install-msys32"></a>
Install clang
-------------------------
1. Click [here](https://www.msys2.org/) to install MSYS32.
2. Run ``pacman -Syu`` from the terminal. (If you wanna use LSP and debuger, install clang-tools-extra and gdb)
3. Through PATH to the following location.
	* ``c:\msys64\mingw64\bin`` or using 32bit system-> ``C:\msys32\mingw32\bin``
	* ``c:\msys64\user\bin`` or using 32bit system-> ``C:\msys32\usr\bin``
4. See [here](https://packagecontrol.io/packages/EasyClangComplete) to setting up EasyClangComplete.

<a id="user-content-install-nodejs"></a>
Install node.js
----------------------
1. Get [here](https://nodejs.org/) to node.js installer.
2. If running ``node -v`` shows node.js version, install is succesfull.
3. Setting up each languages linter.

<a id="user-content-install-codeintel"></a>
Install CodeIntel
----------------------
1. Install Python [here](https://www.python.org/). (You need PIP3, Python3 includes it.)
2. Run below command ``python3 -m pip3 install --upgrade --pre CodeIntel`` or ``pip3 install --upgrade --pre CodeIntel``
3. Install SublimeCodeIntel. [Here](https://github.com/SublimeCodeIntel/SublimeCodeIntel) is documentation.


<a id="user-content-linux-user"></a>
Linux User
---------------
<a id="user-content-how-to-restore-settings-1"></a>
How to restore settings
--------------------------
<font color="Tomato">__ATTENTION__</font> __These are assuming Linux.__  
As a prerequisite, you need to install __clang__ , __node.js__ and __CodeIntel__.  
(EasyClangComplete needs clang, Linter needs node.js, CodeIntel needs SublimeCodeIntel.)  
__You need to change `USER` to your name each config files.__

1. Install PackageControll.
2. Replace Theme file then restart ST3.
3. Copy and paste other files.

<a id="user-content-install-clnag"></a>
Install clnag
-----------------
1. Run the following command to install clang. ``sudo apt update && sudo apt install clang``
2. See [here](https://packagecontrol.io/packages/EasyClangComplete) to setting up EasyClangComplete.

<a id="user-content-install-nodejs-1"></a>
Install node.js
------------------
1. Run the following command to install nodejs. ``sudo apt update && sudo install nodejs npm``
2. If running ``node -v`` shows node.js version, install is succesfull.
3. Setting up each languages linter.

<a id="user-content-install-codeintel-1"></a>
Install CodeIntel
-------------------
1. Check your python version. ``python3 --version``
2. Install CodeIntel run following command. ``sudo pip3 install --upgrade --pre CodeIntel``
3. Install SublimeCodeIntel. [Here](https://github.com/SublimeCodeIntel/SublimeCodeIntel) is documentation.


<a id="user-content-caution"></a>
<font color="Red">CAUTION</font>
---------------------------
__User-Material-Theme-Darker.tmTheme__ in this repository has been partially edited for me useful use.  
The original source is [here](https://packagecontrol.io/packages/Material%20Theme).

__User-Monokai Extended.tmTheme__ has been edited too.  
The original source is [here](https://packagecontrol.io/packages/Monokai%20Extended).

___Gruvbox Material Dark/Light__ has been edited too.  
The original source is [here](https://github.com/sainnhe/gruvbox-material-vscode)  
Thanks to tobiastimm for making the vscode to sublimetext [theme converter](https://github.com/tobiastimm/code-theme-converter)!