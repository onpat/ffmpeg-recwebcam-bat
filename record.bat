@rem ===========================================================================

@rem                                     �ݒ�

@rem ===========================================================================

@rem �r�f�I�f�o�C�X���ƃI�[�f�B�I�f�o�C�X���̐ݒ�ł��B��d���p���t���ŋL�ڂ��Ă��������B
set videodevice="Video device"
set audiodevice="Audio device"

@rem "ffmexe"�ɂ́Affmpeg�̎��s�t�@�C���̃p�X����͂��Ă��������B
set ffmexe=ffmpeg.exe
@rem "videodir"�ɂ́A����t�@�C���̕ۑ������͂��Ă��������B
set videodir=video

@rem ===========================================================================

@rem                                  �����񐶐�

@rem ===========================================================================

set year=%date:~2,2%
set month=%date:~5,2%
set day=%date:~8,2%
set hour=%time:~0,2%
set minute=%time:~3,2%

@rem ===========================================================================

@rem                                     �^��

@rem ===========================================================================

@rem video=""��audio=""�̊��ʂɂ́A�K�؂ȃf�o�C�X�������Ă��������B
@rem MPEG�^��i�掿�F��j
%ffmexe% -rtbufsize 16M -f dshow -i video=%videodevice%:audio=%audiodevice% -c:v mpeg1video -c:a mp2 -b:a 64k -ac 1 %videodir%\%year%%month%%day%%hour%%minute%.mpeg
@rem VP8�^��i�掿�F���jVLC���K�v�Ȍ`���ł��B��������g�p����ꍇ�́AVP8�̃G���R�[�h���ł���ffmpeg�����g�����������B
rem %ffmexe% -rtbufsize 16M -f dshow -i video=%videodevice%:audio=%audiodevice% -c:v libvpx -c:a libvorbis -b:a 64k -ac 1 %videodir%\%year%%month%%day%%hour%%minute%.mkv

@rem ���s�E���f��
%ffmexe% -list_devices true -f dshow -i dummy
@echo �f�o�C�X�̊J�n�Ɏ��s�A�������͘^�悪���f����܂����B�f�o�C�X�ꗗ��\�����܂��B
pause