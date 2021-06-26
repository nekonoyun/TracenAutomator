@echo off
rem **** 文字コード設定 ****
chcp 932
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
echo *----*----*----*----*----*----*----*----*----*----*----*----*----*----*----*
echo ウマ娘 自動起動スクリプト Ver.01a
echo Author: 猫乃ゆん (@nekonoyun)
echo *----*----*----*----*----*----*----*----*----*----*----*----*----*----*----*
echo ウマ娘本体のパスは "%gameDir%" に設定されています。
echo ウマドのパスは "%umadoDir%" に設定されています。
echo ウマウマクルーズのパスは "%cruiseDir%" に設定されています。
echo *----*----*----*----*----*----*----*----*----*----*----*----*----*----*----*
timeout 2
start %gameDir%
start %umadoDir%
start %cruiseDir%
timeout %slpTime%
taskkill /F /IM DMMGamePlayer.exe
