;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; ���� �κ�

;F1�� �������� PyramidFloor ���� ���� �Ƕ�̵带 �����ϴ� �ҽ�

;�Ƕ�̵� ����
Block := "*"
PyramidFloor := 8

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Code
F1::
CurrentPower := 1

Loop %PyramidFloor%
{
	Loop %CurrentPower%
	{
		Send %Block%
	}
	Send {Enter}
	CurrentPower := CurrentPower + 1
}