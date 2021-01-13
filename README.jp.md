# SublimeText3のバックアップリポジトリ

__EN version is [here](/README.md)__

命名規則
-------------------------
フォルダの名前はYYYY-MM-DDの形式

リストア方法
-------------------------
<font color="Tomato">__注意__</font> __Windows環境が前提__  
__MSYS32__ と __node.js__ と __CodeIntel__ のインストールが必要  
(EasyClangCompleteがMSYS32, Linterがnode.js, CodeIntelがSublimeCodeIntel に依存してる)  
__ユーザー名は`USER`で統一、必要に応じて変更が必要__

1. PackageControllのインスコ
2. テーマファイルのコピーとST3の再起動
3. 詳細設定ファイルとかのコピー

MSYS32のインストール
-------------------------

1. [ここ](https://www.msys2.org/) からMSYS32をインスコ
2. ターミナルから``pacman -Syu`` を実行
3. 下の場所にPATHを通す
	* ``c:\msys64\mingw64\bin``  x86はこっち->``C:\msys32\mingw32\bin``
	* ``c:\msys64\user\bin``  x86はこっち->``C:\msys32\usr\bin``

node.jsのインストール
----------------------
1. [ここ](https://nodejs.org/) からnode.jsをインスコ
2. ``node -v``を実行してnode.jsのバージョンが出たらインスコ成功

CodeIntelのインストール
----------------------
1. [ここ](https://www.python.org/)からPythonをインスコ (PIPも必要になる Python3ならデフォで付いてくる)
2. 次のコマンドどちらかを実行``python -m pip install --upgrade --pre CodeIntel`` か ``pip install --upgrade --pre CodeIntel``
3. SublimeCodeIntelを入れる ``https://packagecontrol.io/packages/SublimeCodeIntel``

<font color="Red">注意</font>
---------------------------
__User-Material-Theme-Darker.tmTheme__ は他人のテーマファイルを自分用にアレンジしたものです  
オリジナルのものは[こちら](https://packagecontrol.io/packages/Material%20Theme)

__User-Monokai Extended.tmTheme__ に関しても同様です  
オリジナルのものは[こちら](https://packagecontrol.io/packages/Monokai%20Extended)