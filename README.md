# ffmpeg-recwebcam-bat
## これは何？
Webカメラとマイクからの入力を録画するためのバッチファイルです。

MJPEG, MPEG-1 Video, MPEG-2 VideoとMPEG-1 Audio Layer-2に対応するffmpegが同梱されています。

## 初期設定
1. record.batを実行し、画面に表示された"ビデオデバイス名" (video)及び"オーディオデバイス名" (audio)をメモします。
2. record.batを右クリック→編集でエディタを開き、videodeviceとaudiodeviceを上記のデバイス名に置き換えます。

## 録画方法
1. record.batをダブルクリックすると録画が開始します。ウィンドウを閉じると録画を停止します。
2. 録画した動画ファイルは、videoフォルダに保存されています。

## License
CC0
