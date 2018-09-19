概要
* 情報の発生源（subject)からの通知を、その発信源に興味があるオブジェクト（observer）が受け取るパターン
* observerが、subjectに、自分を特定の処理実行時の通知先として登録する。subjectはそのリストを見て、observer側の通知時実行メソッドを実行する。
* 実際にリスト保持や通知作業の比重はsubject側の方が重くなる。そのためobserverパターンという名前はあまりふさわしくないかも？

サンプル
* 組み込みモジュール（Observer）使用版と、コードブロック使用版
* 組み込みモジュール版がスタンダード
* コードブロック版は、observerクラスは不要になるが、使う場合はコードブロックを定義する場所を考えてないと、余計複雑になりそう。