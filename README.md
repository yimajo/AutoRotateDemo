AutoRotateDemo
==============

iOSの自動回転を使うデモ

注意点は下記の通り

* iOS5ではViewControllerのshouldAutorotateToInterfaceOrientation:メソッドを使う
* iOS5ではタブの子ViewControllerすべてで上記のメソッドを実行する
* iOS6ではViewControllerのshouldAutorotate, supportedInterfaceOrientations:メソッドを使う
* iOS6では親のViewControllerで上記のメソッドを実装し子供のViewControllerのメソッドを呼び出させる


