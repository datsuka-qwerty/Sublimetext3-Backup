# This is my SublimeText3 settings.

Files name format
-------------------------
All backup files name format are YYYY-MM-DD.

How to restore settings
-------------------------
<font color="Tomato">__ATTENTION__</font> __These are assuming Windows.__  
As a prerequisite, you need to install __MSYS32__ , __node.js__ and __CodeIntel__.  
(EasyClangComplete needs MSYS32, Linter needs node.js, CodeIntel needs SublimeCodeIntel.)

1. Install PackageControll.
2. Replace User-Material-Theme-Darker.tmTheme and restart ST3.
3. Copy and paste other files.

Install MSYS32
-------------------------

1. Click [here](https://www.msys2.org/) to install MSYS32.
2. Run ``pacman -Syu`` from the terminal. (If you wanna use LSP and debuger, install clang-tools-extra and gdb)
3. Through PATH to the following location.
	* ``c:\msys64\mingw64\bin`` or using 32bit system ``C:\msys32\mingw32\bin``
	* ``c:\msys64\user\bin`` or using 32bit system ``C:\msys32\usr\bin``

Install node.js
----------------------
1. Get [here](https://nodejs.org/) to node.js installer.
2. If running ``node -v`` shows node.js version, install is succesfull.

Install CodeIntel
----------------------
1. Install Python [here](https://www.python.org/). (You need PIP, Python3 includes it.)
2. Run below command ``python -m pip install --upgrade --pre CodeIntel`` or ``pip install --upgrade --pre CodeIntel``
3. Install SublimeCodeIntel ``https://packagecontrol.io/packages/SublimeCodeIntel``

<font color="Red">CAUTION</font>
---------------------------
__User-Material-Theme-Darker.tmTheme__ in this repository has been partially edited for me useful use.  
The original source is [here](https://packagecontrol.io/packages/Material%20Theme).

__User-Monokai Extended.tmTheme__ has been edited too.  
The original source is [here](https://packagecontrol.io/packages/Monokai%20Extended).