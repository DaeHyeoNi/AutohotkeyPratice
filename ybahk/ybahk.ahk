FileEncoding, UTF-8 ; UTF-8
#include ybahk-opgg.ahk ; OPGG Function Include Line "15" Github #1
#include ybahk-naver.ahk ; Naver Function Include LIne "13,14" Github #1
#include ybahk-pibonachi.ahk ; �ֻ��

Main:
loop
{
dummy := "[F1] Msgbox ����`n[F2] ���̹� �˻�`n[F3] ���̹� �ǽð� �˻��� ����`n[F4] ���׿��극���� �����˻�`n[F5] ������� ����`n[F6] �Ǻ���ġ �Լ��� ���ϱ�"
traytip, ������Ű ��� ����, %dummy%,,1
sleep 7000
}
F1::goto Hello
F2::goto Naver
F3::goto HotNaver
F4::goto OPGG
F5::goto omok
F6::goto pibo
F9::
Run, taskkill.exe /F /IM omok.exe,, Hide
goto Main
return
F10::reload



Hello:
msgbox,, ������Ű��?, ������Ű�� ���� ���¼ҽ� ����� ��ũ�� ��ũ��Ʈ ����Դϴ�.`n�⺻������ �ܼ��ݺ� �۾��� ��ǻ�� ȥ�� �ڵ�ȭ �ϴ� ���α׷����� �����մϴ�.`n���� : http://ahkscript.org , http://autohotkey.com
return

Naver:
Naver()
return

Hotnaver:
HotNaver()
return

OPGG:
OPGG() ;Call ybahk-opgg
return

omok:
run,./Omok/omok.exe
Loop{
traytip, ������ �������Դϴ�., ����� F9���� ���ּ���,,1
sleep 3000
}
return

pibo: ;�ֻ�� ����
pibo()
return

#include ybahk-uriencode.ahk ; uriencode Function 