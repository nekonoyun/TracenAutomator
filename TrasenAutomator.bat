@echo off
rem **** �����R�[�h�ݒ� ****
chcp 932
rem **** �e��ݒ� (���ɍ��킹�āu=�ȍ~���v���������Ă�������) ****
rem ���E�}���{�̂̋N���p�X (��{�I�Ƀf�t�H���g��OK)
set gameDir=dmmgameplayer://umamusume/cl/general/umamusume
rem ���E�}�h (https://booth.pm/ja/items/2813085) ��exe�t�@�C�����΃p�X�œ���
set umadoDir=[������u��]
rem ���E�}�E�}�N���[�Y (https://github.com/amate/UmaUmaCruise/releases) ��exe�t�@�C�����΃p�X�œ���
rem (�ݒ聨�N���Ɠ����Ɏ����T�C�Y�ύX���|���I���ɂ��Ă����ƕ֗��ł�)
set cruiseDir=[������u��]
rem DMMGamePlayer �����`���[�������ŏI�����鎞�Ԃ���� (�f�t�H���g��15�ł����A�E�}���N���O�ɏI�����Ă��܂��ꍇ�͒��߂ɐݒ肵�Ă�������)
set slpTime=15
echo *----*----*----*----*----*----*----*----*----*----*----*----*----*----*----*
echo �E�}�� �����N���X�N���v�g Ver.01a
echo Author: �L�T��� (@nekonoyun)
echo *----*----*----*----*----*----*----*----*----*----*----*----*----*----*----*
echo �E�}���{�̂̃p�X�� "%gameDir%" �ɐݒ肳��Ă��܂��B
echo �E�}�h�̃p�X�� "%umadoDir%" �ɐݒ肳��Ă��܂��B
echo �E�}�E�}�N���[�Y�̃p�X�� "%cruiseDir%" �ɐݒ肳��Ă��܂��B
echo *----*----*----*----*----*----*----*----*----*----*----*----*----*----*----*
timeout 2
start %gameDir%
start %umadoDir%
start %cruiseDir%
timeout %slpTime%
taskkill /F /IM DMMGamePlayer.exe