/*
����
Colors ��� ������ ������ ���� �ְ� ��ǥ "," �� �����Ͽ� rainbow.txt ���Ͽ�
(��ǥ�� StringSplit ���� ����Ϸ��� `, �������� ����մϴ�)
�����ϴ� ���α׷��� ����ÿ�
*/

;��
Filedelete, rainbow.txt
Colors = red,orange,yellow,green,blue,navy,purple
Stringsplit, Rainbow_array, Colors, `,
Loop, %Rainbow_array0%
{
	output_t := Rainbow_array%A_index% "`n"
	FileAppend, %output_t%, rainbow.txt
}
