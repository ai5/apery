作業メモ

・ビルドの仕方
android SDK/NDKをインストール、パスを通すこと。

jniフォルダで

デバッグビルド
 ndk-build
リーリースビルド
 ndk-build NDK_DEBUG=0

コマンドの実行はmsysで行う

・androidで動かす場合

adb push ../libs/armeabi/apery /data/local/bin/apery
adb shell chmod 777 /data/local/bin/apery
x adb shell /data/local/bin/apery
o adb shell cd /data/local/bin;./apery

定跡や評価値ファイルは別途転送が必要

・ShogiGUIでリモートのAndroidにつなぐ

SSH Droidを使用

以下のような記述をしたバッチファイルを作成し、
そのバッチファイルをエンジンとして登録する。
plink -pw admin root@192.168.0.62 cd /data/local/bin;./apery

パスワード、ユーザー名、IPアドレスは環境にあわせて変更する

