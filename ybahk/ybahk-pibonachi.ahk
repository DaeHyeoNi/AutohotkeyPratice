;��ũ��Ʈ�� ���� ����: �Ǻ���ġ ���� �������ڹ�°�� ���� ���Ѵ�
pibo(){
pibomain:
InputBox, p, �Ǻ���ġ, ���° �Ǻ���ġ ���� �˰� ������?`n������ : �ֻ��
if ErrorLevel
{
    MsgBox, ����ϼ̽��ϴ�.
	return
}

ELSE
if (p < 1)
{
    msgbox, 1�̻����� ������ �ּ���.
    goto pibomain
    exitapp
}

if (1 < p < 30)
n := fibget(p)
msgbox, %p%��° ���ڴ� %n%
return

if (p > 30)
{
  n = (0.2)*sqrt 5 * {(1/2)**p}*[{(1+sqrt 5)**p} -{(1-sqrt 5)**p)}]
  msgbox, %p%��° ���ڴ� %n%
  return
}
}
fibget(p)
{
    if (p = 1)
    return 1
    if (p = 2)
        return 1
        fib := fibget(p-1) + fibget(p-2)
        return fib
}