概要
* 1つの要素、およびそれを集約した要素を、同じインターフェースを持つ要素として捉えるパターン。
* ここで同じとしてとらえられる基底クラス、またはインターフェースを、componentと言う。
* compositeは、componentを集約した要素である。compositeは、componentでもある。
* componentの最小単位は、leafという。leafは、componentでもある。
* 上記より、leaf/compositeは、共にcomponentなので、同じ様に扱う事が可能になる。

サンプルについて
* サンプルでは、leafとcomositeはクラスを分けているが、これを分けないで置く方法もある（leafだが子要素を持てるという実装を許容すればよい）
* 上記方法は、記述がシンプルになるが、leafオブジェクトは不要な処理を持つことになる。どちらを選ぶかは好みの問題。
* componentがparentを持つ様にする事で、各componentから親componentをたどる様な実装も可能（サンプルには未実装）

