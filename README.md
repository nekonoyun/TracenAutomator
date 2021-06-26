# TrasenAutomator

[![](https://img.shields.io/github/license/nekonoyun/EPGS-to-Discord?style=for-the-badge)](LICENSE) 
[![](https://img.shields.io/badge/Twitter-%40nekonoyun-00acee?style=for-the-badge)](https://twitter.com/nekonoyun) 
[![](https://img.shields.io/badge/Discord-%E3%82%86%E3%82%93%20%238138-7289da?style=for-the-badge)](#)

DMM GAMES版 [ウマ娘 プリティーダービー](https://dmg.umamusume.jp/) およびウィンドウサイズ自動変更ツール [ウマド](https://booth.pm/ja/items/2813085), イベント選択肢の確認ツール [ウマウマクルーズ](https://github.com/amate/UmaUmaCruise) をWindows上で一括起動, 不要なウィンドウを自動で閉じるスクリプトです。  

# Notice

DMM版のウマ娘はDMM Game Player上で実行されるため，起動時に管理者権限が必要となり，それに応じてウマド，このスクリプトファイルも管理者権限での実行が必要となります。  
スクリプトの記述については必要最低限の処理のみ記載していますが，その内容が理解できない方やセキュリティリスク等について不安のある方は使用をお控えください。  
なお，本スクリプトを介して発生した問題や故障等については制作者は一切の責任を負わないものとします。  
上記ソフトウェアの制作関係者様で何か問題などございましたら上記Discordアカウント，または [Twitter (@nekonoyun)](https://twitter.com/nekonoyun) までご連絡ください。  

# Installation

あらかじめ各ソフトウェアをインストール, 設定の上，「ウマド」と「ウマウマクルーズ」実行ファイルのパスを控えておいてください。

#### スクリプトファイル内での設定

ファイル内 4-13行目が設定箇所となります。
```bat
rem **** 各種設定 (環境に合わせて「=以降を」書き換えてください) ****
rem ↓ウマ娘本体の起動パス (基本的にデフォルトでOK)
set gameDir=dmmgameplayer://umamusume/cl/general/umamusume
rem ↓ウマド (https://booth.pm/ja/items/2813085) のexeファイルを絶対パスで入力
set umadoDir=[ここを置換]
rem ↓ウマウマクルーズ (https://github.com/amate/UmaUmaCruise/releases) のexeファイルを絶対パスで入力
rem (設定→起動と同時に自動サイズ変更を－をオンにしておくと便利です)
set cruiseDir=[ここを置換]
rem DMMGamePlayer ランチャーを自動で終了する時間を入力 (デフォルトで15ですが、ウマ娘起動前に終了してしまう場合は長めに設定してください)
set slpTime=15
```
`"gameDir"` : ウマ娘本体の実行パスを指定します。URLスキームを使用しているため，基本的にはデフォルトでOKかと思います。  
`"umadoDir"` : ウマドの実行パスを指定します。「Umado.exe」への絶対パスを記述してください。  
`"cruiseDir"` : ウマウマクルーズの実行パスを指定します。「UmaUmaCruise.exe」への絶対パスを記述してください。  
`"slpTime"` : ウマ娘本体を実行してからDMM Game Player ランチャーを終了するまでの時間を指定します。起動時間についてはPCスペック等で変化するかと思いますので、起動より先に終了してしまう場合は数値を大きくしてください。指定は(秒)です。

#### ウマドの設定について

ウマドを起動して詳細設定から「起動と同時に自動サイズ変更を有効にする」にチェックを入れておくと，予め設定したウィンドウサイズ, 座標で起動できるようになる為おすすめです。

#### ゲーム本体のアップデートについて

ゲームクライアントのアップデートがある場合，本スクリプトを使用するとアップデートが完了せずにランチャーが閉じられてしまう場合があります。  
ランチャーは起動するのに本体が起動しない場合はそのケースが多いです。その場合はお手数ですが手動でランチャーを起動してアップデートを済ませた上で使用してください。

# Usage

任意のディレクトリにバッチファイルを保存して、コンテキストメニューから「管理者として実行」してください。  
