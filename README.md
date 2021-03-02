# FitLog
 
<img width="1439" alt="top" src="https://user-images.githubusercontent.com/70187032/108749978-d3d43f00-7583-11eb-84c9-0622cda27077.png">

FitLogは、世界中どこにいても筋トレを記録投稿できるアプリです！マイページ機能から自分の記録を確認したり、皆の投稿を見てコメントしたりできます。

https://fitlog-33471.herokuapp.com/

# テストアカウント

メールアドレス：mimi@dot.com

パスワード: mmmmmm

# 機能一覧

・ユーザー新規登録、ログイン機能(devise)  
・投稿機能  
　　動的追加フォーム(cocoon,jquery)  
   　　キロからポンドへの単位の変換、表示機能(javascript)  
・いいね機能(Ajax)  
・マイページ機能  
　　投稿の編集、削除  
・コメント機能  
　　コメント削除機能  
・ページネーション機能(kaminari)  
・ライブラリ機能(high_voltage)  

# 制作背景（意図）

## ペルソナ

→20代から30代の社会人。筋トレを習慣にしていて、週に3、4回ジムでのウェイトトレーニングを2~3年続けている。  
仕事や旅行で月に一回以上は、必ず海外へ行く。滞在先のホテルでもジムに行くのは欠かさない。

海外（アメリカ）に居る時と、日本に居る時とでジムでトレーニンングする時に、単位がキロとポンドで違うので同じアプリが使えなかった。  
自分で変換して記録したりしてたが、面倒なのでキロからポンドに変換してくれて、両方の数値を保存してくれるアプリがあったらいいなと思ったのがきっかけ。  
日本と海外とで時差を超えるので、敢えて投稿日時は表示させない仕様にしている。（タイムゾーン越えるといつトレーニングしたのか分からなくなるため）  


# デモ

*トップページー投稿一覧

![toppage](https://user-images.githubusercontent.com/70187032/109390961-fab1bd00-7957-11eb-9871-a6020811fdfa.gif)

*投稿機能（まず何のトレーニングの日か選んだ後、その日にこなした種目数に応じてフォームを追加できる。キロを入力すると自動的に隣のポンドにも数値が計算され入力される）

![toukou2](https://user-images.githubusercontent.com/70187032/108754861-d9348800-7589-11eb-90da-10c96e1c3bbf.gif)


*マイページ機能（マイページで自分の投稿したログ一覧と、プロフィールが確認できる）

<img width="640" alt="マイページ" src="https://user-images.githubusercontent.com/70187032/109391159-18335680-7959-11eb-8caa-f1193c194fbc.png">

*詳細ページ(詳細ページでその投稿の編集、削除、コメントができる。いいね機能)  
![syousai](https://user-images.githubusercontent.com/70187032/109391354-fdadad00-7959-11eb-8464-4b1fc4ade995.gif)

*ライブラリ機能(フォームの確認がすぐできるように動画を見れるページ)  
 ![library](https://user-images.githubusercontent.com/70187032/109391532-e9b67b00-795a-11eb-8fa8-15d66ba9a400.gif)
 
# 使用技術（開発環境）  

 ## バックエンド
 RUby 2.6.5, Ruby on Rails 6.0.0  
 
 ## フロントエンド
 HTML,Sass,Javascript,JQuery,Ajax,Bootstrap4.3  
 
 ## データベース
 MySQL,SequelPro
 
 ## インフラ
 Heroku
 
 ## ソース管理
 Github,GitHubDesktop
 
 ## テスト
 Rspec
 
 ## エディタ
 VScode
 
# 今後実装したいこと

・タグ付け機能。検索機能（タグをクリックすると一覧でタグ付けされた投稿が表示される）  
・親カテゴリ、子カテゴリ（投稿フォームで何のトレーニングの日か選ぶと、それに付随する種目が自動的にカテゴリから選べるようにしたい）  
・筋トレToDoアプリとしても機能させたいので、マイページ上で投稿したログにチェックを入れられるようにしたい。  

# データベース設計

<img width="549" alt="fitlogernew" src="https://user-images.githubusercontent.com/70187032/109392807-87ad4400-7961-11eb-8805-42f43bdef47a.png">

