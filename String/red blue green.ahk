Colors = red|green|blue
StringSplit,ColorArray,Colors,|,|
;StringSplit, �ܺ����, ��Ȱ�Ұ�, �ɰ��µ� ���е� ����, �̹��ڸ� ������ �Ľ�����
Loop,%ColorArray0% ; �ܺ� ����� ���� �ٽ�
{
	;A_index : �ݺ��� �������� ���ڰ� 1��������
    this_color := ColorArray%A_index%
    MsgBox, Color number %A_index% is %this_color%.
}