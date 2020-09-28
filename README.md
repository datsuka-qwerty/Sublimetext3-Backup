This is my SublimeText3's settings.
-------------------------------------

Files name format
-------------------------
All backup files name format are YYYY-MM-DD.

How to restore settings
-------------------------
As a prerequisite, you need to install __MSYS32__ and __node.js__. (EasyClangComplete needs MSYS32, Linter needs node.js.)

1. Install PackageControll.
2. Replace User-Material-Theme-Darker.tmTheme and restart ST3.
3. Copy and paste other files.

Install MSYS32
-------------------------
<font color="Tomato">__ATTENTION__</font> These are assuming Windows.

1. Click [here](https://www.msys2.org/) to install MSYS32.
2. Run ``pacman -S`` from the terminal. (If you wanna use LSP and debuger, install clang-tools-extra and gdb)
3. Through PATH to the following location.
	* ``c:\msys64\mingw64\bin`` or using 32bit system ``C:\msys32\mingw32\bin``
	* ``c:\msys64\user\bin`` or using 32bit system ``C:\msys32\usr\bin``

Install node.js
----------------------
1. Get [here](https://nodejs.org/) to node.js installer.
2. Run ``node -v`` then it shows node.js version.

<font color="Red">CAUTION</font>
---------------------------
__User-Material-Theme-Darker.tmTheme__ in this repository has been partially edited for me useful use.  
The original source is [here](https://packagecontrol.io/packages/Material%20Theme).