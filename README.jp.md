# SublimeText3のバックアップリポジトリ

__EN version is [here](/README.md)__


- [命名規則](#命名規則)
- [Windowsユーザー](#windowsユーザー)
	- [リストア方法](#リストア方法)
	- [clangのインストール](#clangのインストール)
	- [node.jsのインストール](#nodejsのインストール)
	- [CodeIntelのインストール](#codeintelのインストール)
- [Linuxユーザー](#linuxユーザー)
	- [リストア方法](#リストア方法-1)
	- [clangのインストール](#clangのインストール-1)
	- [node.jsのインストール](#nodejsのインストール-1)
	- [CodeIntelのインストール](#codeintelのインストール-1)
- [注意](#注意)



<a id="命名規則"></a>
命名規則
-------------------------
フォルダの名前はYYYY-MM-DDの形式

<a id="windowsユーザー"></a>
# Windowsユーザー
<a id="リストア方法"></a>
リストア方法
-------------------------
<font color="Tomato">__注意__</font> __Windows環境が前提__  
__MSYS32__ と __node.js__ と __CodeIntel__ のインストールが必要  
(EasyClangCompleteがclang, Linterがnode.js, SublimeCodeIntelがCodeIntel に依存してる)  
__ユーザー名は`USER`で統一、必要に応じて変更が必要__

1. PackageControllのインスコ
2. テーマファイルのコピーとST3の再起動
3. 詳細設定ファイルとかのコピー

<a id="clangのインストール"></a>
clangのインストール
-------------------------
1. [ここ](https://www.msys2.org/) からMSYS32をインスコ
2. ターミナルから``pacman -Syu`` を実行
3. 下の場所にPATHを通す
	* ``c:\msys64\mingw64\bin``  x86はこっち->``C:\msys32\mingw32\bin``
	* ``c:\msys64\user\bin``  x86はこっち->``C:\msys32\usr\bin``
4. [ここ](https://packagecontrol.io/packages/EasyClangComplete)からEasyClangCompleteをセットアップ

<a id="nodejsのインストール"></a>
node.jsのインストール
----------------------
1. [ここ](https://nodejs.org/) からnode.jsをインスコ
2. ``node -v``を実行してnode.jsのバージョンが出たらインスコ成功
3. 各言語のLinterをセットアップ

<a id="codeintelのインストール"></a>
CodeIntelのインストール
----------------------
1. [ここ](https://www.python.org/)からPythonをインスコ (PIPも必要になる Python3ならデフォで付いてくる)
2. 次のコマンドどちらかを実行``python3 -m pip3 install --upgrade --pre CodeIntel``か ``pip3 install --upgrade --pre CodeIntel``
3. SublimeCodeIntelのインストール [公式ドキュメント](https://github.com/SublimeCodeIntel/SublimeCodeIntel)

<a id="linuxユーザー"></a>
# Linuxユーザー
<a id="リストア方法-1"></a>
リストア方法
--------------------------
<font color="Tomato">__注意__</font> __Linux環境が前提__  
__MSYS32__ と __node.js__ と __CodeIntel__ のインストールが必要  
(EasyClangCompleteがclang, Linterがnode.js, CodeIntelがSublimeCodeIntel に依存してる)  
__ユーザー名は`USER`で統一、必要に応じて変更が必要__

1. PackageControllのインスコ
2. テーマファイルのコピーとST3の再起動
3. 詳細設定ファイルとかのコピー

<a id="clangのインストール-1"></a>
clangのインストール
-------------------------
1. 次のコマンドを実行して`clang`をインストール ``sudo apt update && sudo apt install clang``
2. [ここ](https://packagecontrol.io/packages/EasyClangComplete)からEasyClangCompleteをセットアップ

<a id="nodejsのインストール-1"></a>
node.jsのインストール
-------------------------
1. 次のコマンドを実行して`nodejs`と`npm`をインストール ``sudo apt update && sudo install nodejs npm``
2. ``node -v``を実行してnode.jsのバージョンが出たらインスコ成功
3. 各言語のLinterをセットアップ

<a id="codeintelのインストール-1"></a>
CodeIntelのインストール
---------------------------
1. Pythonのバージョンをチェック ``python3 --version``
2. 次のコマンドを実行してCodeIntelのインストール ``sudo pip3 install --upgrade --pre CodeIntel``
3. SublimeCodeIntelをインストール [公式ドキュメント](https://github.com/SublimeCodeIntel/SublimeCodeIntel)


<a id="注意"></a>
<font color="Red">注意</font>
---------------------------
__User-Material-Theme-Darker.tmTheme__ は他人のテーマファイルを自分用にアレンジしたものです  
オリジナルのものは[こちら](https://packagecontrol.io/packages/Material%20Theme)

__User-Monokai Extended.tmTheme__ に関しても同様です  
オリジナルのものは[こちら](https://packagecontrol.io/packages/Monokai%20Extended)

__Gruvbox Material Dark/Light__ に関しても同様です  
オリジナルのものは[こちら](https://github.com/sainnhe/gruvbox-material-vscode)  
tobiastimm様のVSCodeからの[テーマコンバーター](https://github.com/tobiastimm/code-theme-converter)を使わせて頂きました。