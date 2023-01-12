@rem ===========================================================================

@rem                                     設定

@rem ===========================================================================

@rem ビデオデバイス名とオーディオデバイス名の設定です。二重引用符付きで記載してください。
set videodevice="Video device"
set audiodevice="Audio device"

@rem "ffmexe"には、ffmpegの実行ファイルのパスを入力してください。
set ffmexe=ffmpeg.exe
@rem "videodir"には、動画ファイルの保存先を入力してください。
set videodir=.

@rem ===========================================================================

@rem                                  文字列生成

@rem ===========================================================================

set year=%date:~2,2%
set month=%date:~5,2%
set day=%date:~8,2%
set time2=%time: =0%
set hour=%time2:~0,2%
set minute=%time2:~3,2%

@rem ===========================================================================

@rem                                     録画

@rem ===========================================================================

@rem video=""とaudio=""の括弧には、適切なデバイス名を入れてください。
@rem MPEG録画（画質：低）
%ffmexe% -rtbufsize 16M -f dshow -i video=%videodevice%:audio=%audiodevice% -c:v mpeg1video -c:a mp2 -b:a 64k -ac 1 %videodir%\%year%%month%%day%%hour%%minute%.mpeg
@rem VP8録画（画質：高）VLCが必要な形式です。こちらを使用する場合は、VP8のエンコードができるffmpegをお使いください。
rem %ffmexe% -rtbufsize 16M -f dshow -i video=%videodevice%:audio=%audiodevice% -c:v libvpx -c:a libvorbis -b:a 64k -ac 1 %videodir%\%year%%month%%day%%hour%%minute%.mkv

@rem 失敗・中断時
%ffmexe% -list_devices true -f dshow -i dummy
@echo デバイスの開始に失敗、もしくは録画が中断されました。デバイス一覧を表示します。
pause
