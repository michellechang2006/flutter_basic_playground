
## Starting From Scratch: Understanding Functions



##### `runApp();`函式

將`main.dart`檔案裡的程式碼清空後，寫下`runApp();`。`runApp();`是flutter框架已經提供的**函式**。

這時，你會發現這段碼有所錯誤，這是在`Dart`語言裡，必須將`runApp();`包覆在另一個函式中。

![](https://i.imgur.com/YXeOV1n.png)



##### create custom function

語法：

```dart
void /*{函式名稱}*/(){
/*function*/
}
````



##### call  function

和Javascript的語法類似：

```dart
void main(){ /*定義函式*/

}
main() // 執行（回呼 callback)函式
```





嘗試在`main.dart`創建自己的函式吧～

```js
void main(){ /*函式名稱一定要是main，原因稍後解釋*/

}
```


>[Dart Docs | | function](https://dart.dev/language/functions)




##### debug

將`runApp()`放入`main()`。

```dart
void main(){

runApp();

}
```

但這是我們又有新的erorr:


![](https://i.imgur.com/4Ex8gpC.png)


這表示`runApp();`是未定義的函式。因為在我們的`main.dart`檔案並沒有定義`runApp();`函式，也<u>沒有導入其他檔案</u>，所以當然無法使用Flutter框架提供（定義好）給我們的函式。




## Importing Features From Packages

確認`pubspec.yaml`檔案中，有以下程式碼：

```yaml
dependencies:

flutter: ## 一定要有flutter

sdk: flutter
```


`pubspec.yaml`檔案，是專門設定third-party package(第三方函式庫...等)


確認後，即可導入flutter框架提供的`material.dart`檔案了：

```dart
import 'package:flutter/material.dart';
```

記得在結尾加上`;`。Dart語言除了函式外，基本上，都需要結尾加上`;`。

檔案路徑可用單引號或雙引號，但Flutter開發者習慣使用單引號。

和[ES6 Module](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Modules) `import`語法相似。


這時，你會發現`runApp();`的字體顏色，從白色變成黃色。這代表編譯器告訴我們，`runApp();`是<u>已定義</u>的函式。


![](https://i.imgur.com/PvuLo2A.png)




## How Flutter Apps Start


`main()`和`runApp();`都是特別的函式。


##### **`main()`函式：**

`main()`不需要特別callback(回呼)，會自動執行。


##### **`runApp();`函式：**

`runApp();`負責告訴Flutter需要渲染哪些UI元素到螢幕（介面）上。



## Using a First Widget & Passing Values to Functions


`runApp();`這個函式會有error是因為我們沒有輸入「傳入的參數 parameter」



```dart
void main(){

runApp(MaterialApp());

}
```