FileDelete, output.txt
String := "My Name is Hearthstone" ; �� �̸��� �������� �ٴڵ��̾�
StringSplit, word_array, String, %A_Space%
Msgbox, word_array �� 4��°�� ����ִ� ���� %word_array4% �Դϴ�.

Loop, %word_array0%
{
	output := "[" A_index "]" " : " word_array%A_index%
	output_t := word_array%A_index% "`n"
	msgbox, %output%
	FileAppend, %output_t%, output.txt
}
