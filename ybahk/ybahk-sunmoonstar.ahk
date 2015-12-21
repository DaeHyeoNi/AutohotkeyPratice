sunmoonstar(){
	;해 달 별 게임설명:먼저 플레이어가 2명으로 설정된 게임임을 숙지하시고 임해주십시오 
	;플레이어어는 각각 4장의 칩을 받게 됩니다 그 후 무작위로 정해진 A~J까지의 "해","달","별", 3개중 하나에 배팅합니다{오토핫키로 하므로 세세한 룰은 제외하겟습니다}
	Random,A , 1 , 3
	if(A=1)
	{
		A:="해"
	}
	if(A=2)
	{
		A:="달"
	}
	if(A=3)
	{
		A:="별"
	}
	Random,B , 1 , 3
	if(B=1)
	{
		B:="해"
	}
	if(B=2)
	{
		B:="달"
	}
	if(B=3)
	{
		B:="별"
	}
	Random,C , 1 , 3
	if(C=1)
	{
		C:="해"
	}
	if(C=2)
	{
		C:="달"
	}
	if(C=3)
	{
		C:="별"
	}
	Random,D , 1 , 3
	if(D=1)
	{
		D:="해"
	}
	if(D=2)
	{
		D:="달"
	}
	if(D=3)
	{
		D:="별"
	}
	Random,E , 1 , 3
	if(E=1)
	{
		E:="해"
	}
	if(E=2)
	{
		E:="달"
	}
	if(E=3)
	{
		E:="별"
	}
	Random,F , 1 , 3
	if(F=1)
	{
		F:="해"
	}
	if(F=2)
	{
		F:="달"
	}
	if(F=3)
	{
		F:="별"
	}
	Random,G , 1 , 3
	if(G=1)
	{
		G:="해"
	}
	if(G=2)
	{
		G:="달"
	}
	if(G=3)
	{
		G:="별"
	}
	Random,H , 1 , 3
	if(H=1)
	{
		H:="해"
	}
	if(H=2)
	{
		H:="달"
	}
	if(H=3)
	{
		H:="별"
	}
	Random,I , 1 , 3
	if(I=1)
	{
		I:="해"
	}
	if(I=2)
	{
		I:="달"
	}
	if(I=3)
	{
		I:="별"
	}
	Random,J , 1 , 3
	if(J=1)
	{
		J:="해"
	}
	if(J=2)
	{
		J:="달"
	}
	if(J=3)
	{
		J:="별"
	}

	MsgBox,4,설명서,뒤에 나오는 첫번쨰 창이 플레이어1 두번째 창이 플레이어2 입니다`n단, 배팅은 1,2,3에서만 가능합니다 다른 숫자를 넣으면 안되요
	MsgBox,,해 달 별,플레이어는 1~4까지의 숫자만 넣어주십시오
	MsgBox,,해 달 별,A부터 배팅을 시작합니다
	Var1:=4
	Var2:=4
	MsgBox,,해 달 별,플레이어 1의 칩의 갯수는 %Var1% 입니다
	MsgBox,,해 달 별,플레이어 2의 칩의 갯수는 %Var2% 입니다
	zar1:
	InputBox,zar1,,플레이어 1은 1(해)`,2(달)`,3(별)중 하나를 선택해 주세요
	if (ErrorLevel=1)
	{
		Exitapp
		;MsgBox, 취소버튼은 안됩니다. 다시 입력해주세요
		goto, zar1
	}
	if (zar1>3||zar1<1)
	{
		MsgBox, 값을 잘못 입력했습니다. 다시 입력해주세요 (1~3)
		goto, zar1
	}

	playerX:
	if(zar1=1){
	zar1:="해"
	}else if(zar1=2){
	zar1:="달"
	}else if(zar1=3){
	zar1:="별"
	}
	InputBox,playerX,,플레이어 1은 %zar1% 를 선택했습니다`n배팅금을 선택해 주세요 (1~4)
	if (ErrorLevel=1)
	{
		Exitapp
		;MsgBox, 취소버튼은 안됩니다. 다시 입력해주세요
		goto, playerX
	}
	if (playerX>4||playerX<1)
	{
		MsgBox, 값을 잘못 입력했습니다. 다시 입력해주세요 (1~4)
		goto, playerX
	}

	zar2:
	InputBox,zar2,,플레이어 2는 1(해)`,2(달)`,3(별)중 하나를 선택해 주세요
	if (ErrorLevel=1)
	{
		Exitapp
		;MsgBox, 취소버튼은 안됩니다. 다시 입력해주세요
		goto, zar2
	}
	if (zar2>3||zar2<1)
	{
		MsgBox, 값을 잘못 입력했습니다. 다시 입력해주세요 (1~3)
		goto, zar2
	}

	playerY:
	if(zar2=1){
	zar2:="해"
	}else if(zar2=2){
	zar2:="달"
	}else if(zar2=3){
	zar2:="별"
	}
	InputBox,playerY,,플레이어 2는 %zar2% 를 선택했습니다`n배팅금을 선택해 주세요 (1~4)
	if (ErrorLevel=1)
	{
		Exitapp
		;MsgBox, 취소버튼은 안됩니다. 다시 입력해주세요
		goto, playerY
	}
	if (playerY>4||playerY<1)
	{
		MsgBox, 값을 잘못 입력했습니다. 다시 입력해주세요 (1~4)
		goto, playerY
	}

	if(zar1="해"){
	zar1:=1
	}else if(zar1="달"){
	zar1:=2
	}else if(zar1="별"){
	zar1:=3
	}
	if(zar2="해"){
	zar2:=1
	}else if(zar2="달"){
	zar2:=2
	}else if(zar2="별"){
	zar2:=3
	}
	MsgBox,,해 달 별,A는 %A%입니다

	if(A="해")
	{
		if(zar1=1)
			Var1:=playerX*3
		if(zar1=2)
			Var1:=Var1-playerX
		if(zar1=3)
			Var1:=Var1-playerX
		
		if(zar2=1)
			Var2:=playerY*3
		if(zar2=2)
			Var2:=Var2-playerY
		if(zar2=3)
			Var2:=Var2-playerY
	}

	if(A="달")
	{
		if(zar1=1)
			Var1:=Var1-playerX
		if(zar1=2)
			Var1:=playerX*3
		if(zar1=3)
			Var1:=Var1-playerX


		if(zar2=1)
			Var2:=Var2-playerY
		if(zar2=2)
			Var2:=playerY*3
		if(zar2=3)
			Var2:=Var2-playerY

	}

	if(A="별")
	{
		if(zar1=1)
			Var1:=Var1-playerX
		if(zar1=2)
			Var1:=Var1-playerX
		if(zar1=3)
			Var1:=playerX*3


		if(zar2=1)
			Var2:=Var2-playerY
		if(zar2=2)
			Var2:=Var2-playerY
		if(zar2=3)
			Var2:=playerY*3
	}
	if(Var1<0){
		msgbox,,해 달 별, 플레이어2의 승리입니다
		return
	}if(Var2<0){
		msgbox,,해 달 별, 플레이어1의 승리입니다 
		return
	}
	msgbox,,해 달 별,플레이어 1의 남은 금액은 %Var1% `n플레이어 2의 남은 금액은 %Var2%
	MsgBox,,해 달 별,플레이어 1의 칩의 갯수는 %Var1% 입니다
	MsgBox,,해 달 별,플레이어 2의 칩의 갯수는 %Var2% 입니다
	zar11:
	InputBox,zar1,,플레이어 1은 1(해)`,2(달)`,3(별)중 하나를 선택해 주세요
	if (ErrorLevel=1)
	{
		Exitapp
		;MsgBox, 취소버튼은 안됩니다. 다시 입력해주세요
		goto, zar11
	}
	if (zar1>3||zar1<1)
	{
		MsgBox, 값을 잘못 입력했습니다. 다시 입력해주세요 (1~3)
		goto, zar11
	}

	playerX1:
	if(zar1=1){
	zar1:="해"
	}else if(zar1=2){
	zar1:="달"
	}else if(zar1=3){
	zar1:="별"
	}
	InputBox,playerX,,플레이어 1은 %zar1% 를 선택했습니다`n배팅금을 선택해 주세요 (1~4)
	if (ErrorLevel=1)
	{
		Exitapp
		;MsgBox, 취소버튼은 안됩니다. 다시 입력해주세요
		goto, playerX1
	}
	if (playerX>4||playerX<1)
	{
		MsgBox, 값을 잘못 입력했습니다. 다시 입력해주세요 (1~4)
		goto, playerX1
	}

	zar21:
	InputBox,zar2,,플레이어 2는 1(해)`,2(달)`,3(별)중 하나를 선택해 주세요
	if (ErrorLevel=1)
	{
		Exitapp
		;MsgBox, 취소버튼은 안됩니다. 다시 입력해주세요
		goto, zar21
	}
	if (zar2>3||zar2<1)
	{
		MsgBox, 값을 잘못 입력했습니다. 다시 입력해주세요 (1~3)
		goto, zar21
	}

	playerY1:
	if(zar2=1){
	zar2:="해"
	}else if(zar2=2){
	zar2:="달"
	}else if(zar2=3){
	zar2:="별"
	}
	InputBox,playerY,,플레이어 2는 %zar2% 를 선택했습니다`n배팅금을 선택해 주세요 (1~4)
	if (ErrorLevel=1)
	{
		Exitapp
		;MsgBox, 취소버튼은 안됩니다. 다시 입력해주세요
		goto, playerY2
	}
	if (playerY>4||playerY<1)
	{
		MsgBox, 값을 잘못 입력했습니다. 다시 입력해주세요 (1~4)
		goto, playerY2
	}

	if(zar1="해"){
	zar1:=1
	}else if(zar1="달"){
	zar1:=2
	}else if(zar1="별"){
	zar1:=3
	}
	if(zar2="해"){
	zar2:=1
	}else if(zar2="달"){
	zar2:=2
	}else if(zar2="별"){
	zar2:=3
	}
	MsgBox,,해 달 별,A는 %B%입니다



	if(B="해")
	{
		if(zar1=1)
			Var1:=playerX*3
		if(zar1=2)
			Var1:=Var1-playerX
		if(zar1=3)
			Var1:=Var1-playerX
		
		if(zar2=1)
			Var2:=playerY*3
		if(zar2=2)
			Var2:=Var2-playerY
		if(zar2=3)
			Var2:=Var2-playerY
	}

	if(B="달")
	{
		if(zar1=1)
			Var1:=Var1-playerX
		if(zar1=2)
			Var1:=playerX*3
		if(zar1=3)
			Var1:=Var1-playerX


		if(zar2=1)
			Var2:=Var2-playerY
		if(zar2=2)
			Var2:=playerY*3
		if(zar2=3)
			Var2:=Var2-playerY

	}

	if(B="별")
	{
		if(zar1=1)
			Var1:=Var1-playerX
		if(zar1=2)
			Var1:=Var1-playerX
		if(zar1=3)
			Var1:=playerX*3


		if(zar2=1)
			Var2:=Var2-playerY
		if(zar2=2)
			Var2:=Var2-playerY
		if(zar2=3)
			Var2:=playerY*3
	}


	if(Var1<0){
		msgbox,,해 달 별, 플레이어2의 승리입니다
		return
	}if(Var2<0){
		msgbox,,해 달 별, 플레이어1의 승리입니다 
		return
	}
	msgbox,,해 달 별,플레이어 1의 남은 금액은 %Var1% `n플레이어 2의 남은 금액은 %Var2%
	MsgBox,,해 달 별,플레이어 1의 칩의 갯수는 %Var1% 입니다
	MsgBox,,해 달 별,플레이어 2의 칩의 갯수는 %Var2% 입니다
	zar12:
	InputBox,zar1,,플레이어 1은 1(해)`,2(달)`,3(별)중 하나를 선택해 주세요
	if (ErrorLevel=1)
	{
		Exitapp
		;MsgBox, 취소버튼은 안됩니다. 다시 입력해주세요
		goto, zar12
	}
	if (zar1>3||zar1<1)
	{
		MsgBox, 값을 잘못 입력했습니다. 다시 입력해주세요 (1~3)
		goto, zar12
	}

	playerX2:
	if(zar1=1){
	zar1:="해"
	}else if(zar1=2){
	zar1:="달"
	}else if(zar1=3){
	zar1:="별"
	}
	InputBox,playerX,,플레이어 1은 %zar1% 를 선택했습니다`n배팅금을 선택해 주세요 (1~4)
	if (ErrorLevel=1)
	{
		Exitapp
		;MsgBox, 취소버튼은 안됩니다. 다시 입력해주세요
		goto, playerX
	}
	if (playerX>4||playerX<1)
	{
		MsgBox, 값을 잘못 입력했습니다. 다시 입력해주세요 (1~4)
		goto, playerX2
	}

	zar22:
	InputBox,zar2,,플레이어 2는 1(해)`,2(달)`,3(별)중 하나를 선택해 주세요
	if (ErrorLevel=1)
	{
		Exitapp
		;MsgBox, 취소버튼은 안됩니다. 다시 입력해주세요
		goto, zar22
	}
	if (zar2>3||zar2<1)
	{
		MsgBox, 값을 잘못 입력했습니다. 다시 입력해주세요 (1~3)
		goto, zar22
	}

	playerY2:
	if(zar2=1){
	zar2:="해"
	}else if(zar2=2){
	zar2:="달"
	}else if(zar2=3){
	zar2:="별"
	}
	InputBox,playerY,,플레이어 2는 %zar2% 를 선택했습니다`n배팅금을 선택해 주세요 (1~4)
	if (ErrorLevel=1)
	{
		Exitapp
		;MsgBox, 취소버튼은 안됩니다. 다시 입력해주세요
		goto, playerY2
	}
	if (playerY>4||playerY<1)
	{
		MsgBox, 값을 잘못 입력했습니다. 다시 입력해주세요 (1~4)
		goto, playerY2
	}

	if(zar1="해"){
	zar1:=1
	}else if(zar1="달"){
	zar1:=2
	}else if(zar1="별"){
	zar1:=3
	}
	if(zar2="해"){
	zar2:=1
	}else if(zar2="달"){
	zar2:=2
	}else if(zar2="별"){
	zar2:=3
	}
	MsgBox,,해 달 별,A는 %C%입니다


	if(C="해")
	{
		if(zar1=1)
			Var1:=playerX*3
		if(zar1=2)
			Var1:=Var1-playerX
		if(zar1=3)
			Var1:=Var1-playerX
		
		if(zar2=1)
			Var2:=playerY*3
		if(zar2=2)
			Var2:=Var2-playerY
		if(zar2=3)
			Var2:=Var2-playerY
	}

	if(C="달")
	{
		if(zar1=1)
			Var1:=Var1-playerX
		if(zar1=2)
			Var1:=playerX*3
		if(zar1=3)
			Var1:=Var1-playerX


		if(zar2=1)
			Var2:=Var2-playerY
		if(zar2=2)
			Var2:=playerY*3
		if(zar2=3)
			Var2:=Var2-playerY

	}

	if(C="별")
	{
		if(zar1=1)
			Var1:=Var1-playerX
		if(zar1=2)
			Var1:=Var1-playerX
		if(zar1=3)
			Var1:=playerX*3


		if(zar2=1)
			Var2:=Var2-playerY
		if(zar2=2)
			Var2:=Var2-playerY
		if(zar2=3)
			Var2:=playerY*3
	}

	if(Var1<0){
		msgbox,,해 달 별, 플레이어2의 승리입니다
		return
	}if(Var2<0){
		msgbox,,해 달 별, 플레이어1의 승리입니다 
		return
	}
	msgbox,,해 달 별,플레이어 1의 남은 금액은 %Var1% `n플레이어 2의 남은 금액은 %Var2%
	MsgBox,,해 달 별,플레이어 1의 칩의 갯수는 %Var1% 입니다
	MsgBox,,해 달 별,플레이어 2의 칩의 갯수는 %Var2% 입니다
	zar13:
	InputBox,zar1,,플레이어 1은 1(해)`,2(달)`,3(별)중 하나를 선택해 주세요
	if (ErrorLevel=1)
	{
		Exitapp
		;MsgBox, 취소버튼은 안됩니다. 다시 입력해주세요
		goto, zar13
	}
	if (zar1>3||zar1<1)
	{
		MsgBox, 값을 잘못 입력했습니다. 다시 입력해주세요 (1~3)
		goto, zar13
	}

	playerX3:
	if(zar1=1){
	zar1:="해"
	}else if(zar1=2){
	zar1:="달"
	}else if(zar1=3){
	zar1:="별"
	}
	InputBox,playerX,,플레이어 1은 %zar1% 를 선택했습니다`n배팅금을 선택해 주세요 (1~4)
	if (ErrorLevel=1)
	{
		Exitapp
		;MsgBox, 취소버튼은 안됩니다. 다시 입력해주세요
		goto, playerX3
	}
	if (playerX>4||playerX<1)
	{
		MsgBox, 값을 잘못 입력했습니다. 다시 입력해주세요 (1~4)
		goto, playerX3
	}

	zar23:
	InputBox,zar2,,플레이어 2는 1(해)`,2(달)`,3(별)중 하나를 선택해 주세요
	if (ErrorLevel=1)
	{
		Exitapp
		;MsgBox, 취소버튼은 안됩니다. 다시 입력해주세요
		goto, zar23
	}
	if (zar2>3||zar2<1)
	{
		MsgBox, 값을 잘못 입력했습니다. 다시 입력해주세요 (1~3)
		goto, zar23
	}

	playerY3:
	if(zar2=1){
	zar2:="해"
	}else if(zar2=2){
	zar2:="달"
	}else if(zar2=3){
	zar2:="별"
	}
	InputBox,playerY,,플레이어 2는 %zar2% 를 선택했습니다`n배팅금을 선택해 주세요 (1~4)
	if (ErrorLevel=1)
	{
		Exitapp
		;MsgBox, 취소버튼은 안됩니다. 다시 입력해주세요
		goto, playerY3
	}
	if (playerY>4||playerY<1)
	{
		MsgBox, 값을 잘못 입력했습니다. 다시 입력해주세요 (1~4)
		goto, playerY3
	}

	if(zar1="해"){
	zar1:=1
	}else if(zar1="달"){
	zar1:=2
	}else if(zar1="별"){
	zar1:=3
	}
	if(zar2="해"){
	zar2:=1
	}else if(zar2="달"){
	zar2:=2
	}else if(zar2="별"){
	zar2:=3
	}
	MsgBox,,해 달 별,A는 %D%입니다





	if(D="해")
	{
		if(zar1=1)
			Var1:=playerX*3
		if(zar1=2)
			Var1:=Var1-playerX
		if(zar1=3)
			Var1:=Var1-playerX
		
		if(zar2=1)
			Var2:=playerY*3
		if(zar2=2)
			Var2:=Var2-playerY
		if(zar2=3)
			Var2:=Var2-playerY
	}

	if(D="달")
	{
		if(zar1=1)
			Var1:=Var1-playerX
		if(zar1=2)
			Var1:=playerX*3
		if(zar1=3)
			Var1:=Var1-playerX


		if(zar2=1)
			Var2:=Var2-playerY
		if(zar2=2)
			Var2:=playerY*3
		if(zar2=3)
			Var2:=Var2-playerY

	}

	if(D="별")
	{
		if(zar1=1)
			Var1:=Var1-playerX
		if(zar1=2)
			Var1:=Var1-playerX
		if(zar1=3)
			Var1:=playerX*3


		if(zar2=1)
			Var2:=Var2-playerY
		if(zar2=2)
			Var2:=Var2-playerY
		if(zar2=3)
			Var2:=playerY*3
	}

	if(Var1<0){
		msgbox,,해 달 별, 플레이어2의 승리입니다
		return
	}if(Var2<0){
		msgbox,,해 달 별, 플레이어1의 승리입니다 
		return
	}
	msgbox,,해 달 별,플레이어 1의 남은 금액은 %Var1% `n플레이어 2의 남은 금액은 %Var2%
	MsgBox,,해 달 별,플레이어 1의 칩의 갯수는 %Var1% 입니다
	MsgBox,,해 달 별,플레이어 2의 칩의 갯수는 %Var2% 입니다
	zar14:
	InputBox,zar1,,플레이어 1은 1(해)`,2(달)`,3(별)중 하나를 선택해 주세요
	if (ErrorLevel=1)
	{
		Exitapp
		;MsgBox, 취소버튼은 안됩니다. 다시 입력해주세요
		goto, zar14
	}
	if (zar1>3||zar1<1)
	{
		MsgBox, 값을 잘못 입력했습니다. 다시 입력해주세요 (1~3)
		goto, zar14
	}

	playerX4:
	if(zar1=1){
	zar1:="해"
	}else if(zar1=2){
	zar1:="달"
	}else if(zar1=3){
	zar1:="별"
	}
	InputBox,playerX,,플레이어 1은 %zar1% 를 선택했습니다`n배팅금을 선택해 주세요 (1~4)
	if (ErrorLevel=1)
	{
		Exitapp
		;MsgBox, 취소버튼은 안됩니다. 다시 입력해주세요
		goto, playerX4
	}
	if (playerX>4||playerX<1)
	{
		MsgBox, 값을 잘못 입력했습니다. 다시 입력해주세요 (1~4)
		goto, playerX4
	}

	zar24:
	InputBox,zar2,,플레이어 2는 1(해)`,2(달)`,3(별)중 하나를 선택해 주세요
	if (ErrorLevel=1)
	{
		Exitapp
		;MsgBox, 취소버튼은 안됩니다. 다시 입력해주세요
		goto, zar24
	}
	if (zar2>3||zar2<1)
	{
		MsgBox, 값을 잘못 입력했습니다. 다시 입력해주세요 (1~3)
		goto, zar24
	}

	playerY4:
	if(zar2=1){
	zar2:="해"
	}else if(zar2=2){
	zar2:="달"
	}else if(zar2=3){
	zar2:="별"
	}
	InputBox,playerY,,플레이어 2는 %zar2% 를 선택했습니다`n배팅금을 선택해 주세요 (1~4)
	if (ErrorLevel=1)
	{
		Exitapp
		;MsgBox, 취소버튼은 안됩니다. 다시 입력해주세요
		goto, playerY4
	}
	if (playerY>4||playerY<1)
	{
		MsgBox, 값을 잘못 입력했습니다. 다시 입력해주세요 (1~4)
		goto, playerY4
	}

	if(zar1="해"){
	zar1:=1
	}else if(zar1="달"){
	zar1:=2
	}else if(zar1="별"){
	zar1:=3
	}
	if(zar2="해"){
	zar2:=1
	}else if(zar2="달"){
	zar2:=2
	}else if(zar2="별"){
	zar2:=3
	}
	MsgBox,,해 달 별,A는 %E%입니다



	if(E="해")
	{
		if(zar1=1)
			Var1:=playerX*3
		if(zar1=2)
			Var1:=Var1-playerX
		if(zar1=3)
			Var1:=Var1-playerX
		
		if(zar2=1)
			Var2:=playerY*3
		if(zar2=2)
			Var2:=Var2-playerY
		if(zar2=3)
			Var2:=Var2-playerY
	}

	if(E="달")
	{
		if(zar1=1)
			Var1:=Var1-playerX
		if(zar1=2)
			Var1:=playerX*3
		if(zar1=3)
			Var1:=Var1-playerX


		if(zar2=1)
			Var2:=Var2-playerY
		if(zar2=2)
			Var2:=playerY*3
		if(zar2=3)
			Var2:=Var2-playerY

	}

	if(E="별")
	{
		if(zar1=1)
			Var1:=Var1-playerX
		if(zar1=2)
			Var1:=Var1-playerX
		if(zar1=3)
			Var1:=playerX*3


		if(zar2=1)
			Var2:=Var2-playerY
		if(zar2=2)
			Var2:=Var2-playerY
		if(zar2=3)
			Var2:=playerY*3
	}

	if(Var1<0){
		msgbox,,해 달 별, 플레이어2의 승리입니다
		return
	}if(Var2<0){
		msgbox,,해 달 별, 플레이어1의 승리입니다
		return		
	}
	msgbox,,해 달 별,플레이어 1의 남은 금액은 %Var1% `n플레이어 2의 남은 금액은 %Var2%
	MsgBox,,해 달 별,플레이어 1의 칩의 갯수는 %Var1% 입니다
	MsgBox,,해 달 별,플레이어 2의 칩의 갯수는 %Var2% 입니다
	zar15:
	InputBox,zar1,,플레이어 1은 1(해)`,2(달)`,3(별)중 하나를 선택해 주세요
	if (ErrorLevel=1)
	{
		Exitapp
		;MsgBox, 취소버튼은 안됩니다. 다시 입력해주세요
		goto, zar15
	}
	if (zar1>3||zar1<1)
	{
		MsgBox, 값을 잘못 입력했습니다. 다시 입력해주세요 (1~3)
		goto, zar15
	}

	playerX5:
	if(zar1=1){
	zar1:="해"
	}else if(zar1=2){
	zar1:="달"
	}else if(zar1=3){
	zar1:="별"
	}
	InputBox,playerX,,플레이어 1은 %zar1% 를 선택했습니다`n배팅금을 선택해 주세요 (1~4)
	if (ErrorLevel=1)
	{
		Exitapp
		;MsgBox, 취소버튼은 안됩니다. 다시 입력해주세요
		goto, playerX5
	}
	if (playerX>4||playerX<1)
	{
		MsgBox, 값을 잘못 입력했습니다. 다시 입력해주세요 (1~4)
		goto, playerX5
	}

	zar25:
	InputBox,zar2,,플레이어 2는 1(해)`,2(달)`,3(별)중 하나를 선택해 주세요
	if (ErrorLevel=1)
	{
		Exitapp
		;MsgBox, 취소버튼은 안됩니다. 다시 입력해주세요
		goto, zar25
	}
	if (zar2>3||zar2<1)
	{
		MsgBox, 값을 잘못 입력했습니다. 다시 입력해주세요 (1~3)
		goto, zar25
	}

	playerY5:
	if(zar2=1){
	zar2:="해"
	}else if(zar2=2){
	zar2:="달"
	}else if(zar2=3){
	zar2:="별"
	}
	InputBox,playerY,,플레이어 2는 %zar2% 를 선택했습니다`n배팅금을 선택해 주세요 (1~4)
	if (ErrorLevel=1)
	{
		Exitapp
		;MsgBox, 취소버튼은 안됩니다. 다시 입력해주세요
		goto, playerY5
	}
	if (playerY>4||playerY<1)
	{
		MsgBox, 값을 잘못 입력했습니다. 다시 입력해주세요 (1~4)
		goto, playerY5
	}

	if(zar1="해"){
	zar1:=1
	}else if(zar1="달"){
	zar1:=2
	}else if(zar1="별"){
	zar1:=3
	}
	if(zar2="해"){
	zar2:=1
	}else if(zar2="달"){
	zar2:=2
	}else if(zar2="별"){
	zar2:=3
	}
	MsgBox,,해 달 별,A는 %F%입니다





	if(F="해")
	{
		if(zar1=1)
			Var1:=playerX*3
		if(zar1=2)
			Var1:=Var1-playerX
		if(zar1=3)
			Var1:=Var1-playerX
		
		if(zar2=1)
			Var2:=playerY*3
		if(zar2=2)
			Var2:=Var2-playerY
		if(zar2=3)
			Var2:=Var2-playerY
	}

	if(F="달")
	{
		if(zar1=1)
			Var1:=Var1-playerX
		if(zar1=2)
			Var1:=playerX*3
		if(zar1=3)
			Var1:=Var1-playerX


		if(zar2=1)
			Var2:=Var2-playerY
		if(zar2=2)
			Var2:=playerY*3
		if(zar2=3)
			Var2:=Var2-playerY

	}

	if(F="별")
	{
		if(zar1=1)
			Var1:=Var1-playerX
		if(zar1=2)
			Var1:=Var1-playerX
		if(zar1=3)
			Var1:=playerX*3


		if(zar2=1)
			Var2:=Var2-playerY
		if(zar2=2)
			Var2:=Var2-playerY
		if(zar2=3)
			Var2:=playerY*3
	}

	if(Var1<0){
		msgbox,,해 달 별, 플레이어2의 승리입니다
		return
	}if(Var2<0){
		msgbox,,해 달 별, 플레이어1의 승리입니다 
		return
	}
	msgbox,,해 달 별,플레이어 1의 남은 금액은 %Var1% `n플레이어 2의 남은 금액은 %Var2%
	MsgBox,,해 달 별,플레이어 1의 칩의 갯수는 %Var1% 입니다
	MsgBox,,해 달 별,플레이어 2의 칩의 갯수는 %Var2% 입니다
	zar16:
	InputBox,zar1,,플레이어 1은 1(해)`,2(달)`,3(별)중 하나를 선택해 주세요
	if (ErrorLevel=1)
	{
		Exitapp
		;MsgBox, 취소버튼은 안됩니다. 다시 입력해주세요
		goto, zar16
	}
	if (zar1>3||zar1<1)
	{
		MsgBox, 값을 잘못 입력했습니다. 다시 입력해주세요 (1~3)
		goto, zar16
	}

	playerX6:
	if(zar1=1){
	zar1:="해"
	}else if(zar1=2){
	zar1:="달"
	}else if(zar1=3){
	zar1:="별"
	}
	InputBox,playerX,,플레이어 1은 %zar1% 를 선택했습니다`n배팅금을 선택해 주세요 (1~4)
	if (ErrorLevel=1)
	{
		Exitapp
		;MsgBox, 취소버튼은 안됩니다. 다시 입력해주세요
		goto, playerX6
	}
	if (playerX>4||playerX<1)
	{
		MsgBox, 값을 잘못 입력했습니다. 다시 입력해주세요 (1~4)
		goto, playerX6
	}

	zar26:
	InputBox,zar2,,플레이어 2는 1(해)`,2(달)`,3(별)중 하나를 선택해 주세요
	if (ErrorLevel=1)
	{
		Exitapp
		;MsgBox, 취소버튼은 안됩니다. 다시 입력해주세요
		goto, zar26
	}
	if (zar2>3||zar2<1)
	{
		MsgBox, 값을 잘못 입력했습니다. 다시 입력해주세요 (1~3)
		goto, zar26
	}

	playerY6:
	if(zar2=1){
	zar2:="해"
	}else if(zar2=2){
	zar2:="달"
	}else if(zar2=3){
	zar2:="별"
	}
	InputBox,playerY,,플레이어 2는 %zar2% 를 선택했습니다`n배팅금을 선택해 주세요 (1~4)
	if (ErrorLevel=1)
	{
		Exitapp
		;MsgBox, 취소버튼은 안됩니다. 다시 입력해주세요
		goto, playerY6
	}
	if (playerY>4||playerY<1)
	{
		MsgBox, 값을 잘못 입력했습니다. 다시 입력해주세요 (1~4)
		goto, playerY6
	}

	if(zar1="해"){
	zar1:=1
	}else if(zar1="달"){
	zar1:=2
	}else if(zar1="별"){
	zar1:=3
	}
	if(zar2="해"){
	zar2:=1
	}else if(zar2="달"){
	zar2:=2
	}else if(zar2="별"){
	zar2:=3
	}
	MsgBox,,해 달 별,A는 %G%입니다




	if(G="해")
	{
		if(zar1=1)
			Var1:=playerX*3
		if(zar1=2)
			Var1:=Var1-playerX
		if(zar1=3)
			Var1:=Var1-playerX
		
		if(zar2=1)
			Var2:=playerY*3
		if(zar2=2)
			Var2:=Var2-playerY
		if(zar2=3)
			Var2:=Var2-playerY
	}

	if(G="달")
	{
		if(zar1=1)
			Var1:=Var1-playerX
		if(zar1=2)
			Var1:=playerX*3
		if(zar1=3)
			Var1:=Var1-playerX


		if(zar2=1)
			Var2:=Var2-playerY
		if(zar2=2)
			Var2:=playerY*3
		if(zar2=3)
			Var2:=Var2-playerY

	}

	if(G="별")
	{
		if(zar1=1)
			Var1:=Var1-playerX
		if(zar1=2)
			Var1:=Var1-playerX
		if(zar1=3)
			Var1:=playerX*3


		if(zar2=1)
			Var2:=Var2-playerY
		if(zar2=2)
			Var2:=Var2-playerY
		if(zar2=3)
			Var2:=playerY*3
	}

	if(Var1<0){
		msgbox,,해 달 별, 플레이어2의 승리입니다
		return
	}if(Var2<0){
		msgbox,,해 달 별, 플레이어1의 승리입니다 
		return
	}
	msgbox,,해 달 별,플레이어 1의 남은 금액은 %Var1% `n플레이어 2의 남은 금액은 %Var2%
	MsgBox,,해 달 별,플레이어 1의 칩의 갯수는 %Var1% 입니다
	MsgBox,,해 달 별,플레이어 2의 칩의 갯수는 %Var2% 입니다
	zar17:
	InputBox,zar1,,플레이어 1은 1(해)`,2(달)`,3(별)중 하나를 선택해 주세요
	if (ErrorLevel=1)
	{
		Exitapp
		;MsgBox, 취소버튼은 안됩니다. 다시 입력해주세요
		goto, zar17
	}
	if (zar1>3||zar1<1)
	{
		MsgBox, 값을 잘못 입력했습니다. 다시 입력해주세요 (1~3)
		goto, zar17
	}

	playerX7:
	if(zar1=1){
	zar1:="해"
	}else if(zar1=2){
	zar1:="달"
	}else if(zar1=3){
	zar1:="별"
	}
	InputBox,playerX,,플레이어 1은 %zar1% 를 선택했습니다`n배팅금을 선택해 주세요 (1~4)
	if (ErrorLevel=1)
	{
		Exitapp
		;MsgBox, 취소버튼은 안됩니다. 다시 입력해주세요
		goto, playerX7
	}
	if (playerX>4||playerX<1)
	{
		MsgBox, 값을 잘못 입력했습니다. 다시 입력해주세요 (1~4)
		goto, playerX7
	}

	zar27:
	InputBox,zar2,,플레이어 2는 1(해)`,2(달)`,3(별)중 하나를 선택해 주세요
	if (ErrorLevel=1)
	{
		Exitapp
		;MsgBox, 취소버튼은 안됩니다. 다시 입력해주세요
		goto, zar27
	}
	if (zar2>3||zar2<1)
	{
		MsgBox, 값을 잘못 입력했습니다. 다시 입력해주세요 (1~3)
		goto, zar27
	}

	playerY7:
	if(zar2=1){
	zar2:="해"
	}else if(zar2=2){
	zar2:="달"
	}else if(zar2=3){
	zar2:="별"
	}
	InputBox,playerY,,플레이어 2는 %zar2% 를 선택했습니다`n배팅금을 선택해 주세요 (1~4)
	if (ErrorLevel=1)
	{
		Exitapp
		;MsgBox, 취소버튼은 안됩니다. 다시 입력해주세요
		goto, playerY7
	}
	if (playerY>4||playerY<1)
	{
		MsgBox, 값을 잘못 입력했습니다. 다시 입력해주세요 (1~4)
		goto, playerY7
	}

	if(zar1="해"){
	zar1:=1
	}else if(zar1="달"){
	zar1:=2
	}else if(zar1="별"){
	zar1:=3
	}
	if(zar2="해"){
	zar2:=1
	}else if(zar2="달"){
	zar2:=2
	}else if(zar2="별"){
	zar2:=3
	}

	MsgBox,,해 달 별,A는 %H%입니다





	if(H="해")
	{
		if(zar1=1)
			Var1:=playerX*3
		if(zar1=2)
			Var1:=Var1-playerX
		if(zar1=3)
			Var1:=Var1-playerX
		
		if(zar2=1)
			Var2:=playerY*3
		if(zar2=2)
			Var2:=Var2-playerY
		if(zar2=3)
			Var2:=Var2-playerY
	}

	if(H="달")
	{
		if(zar1=1)
			Var1:=Var1-playerX
		if(zar1=2)
			Var1:=playerX*3
		if(zar1=3)
			Var1:=Var1-playerX


		if(zar2=1)
			Var2:=Var2-playerY
		if(zar2=2)
			Var2:=playerY*3
		if(zar2=3)
			Var2:=Var2-playerY

	}

	if(H="별")
	{
		if(zar1=1)
			Var1:=Var1-playerX
		if(zar1=2)
			Var1:=Var1-playerX
		if(zar1=3)
			Var1:=playerX*3


		if(zar2=1)
			Var2:=Var2-playerY
		if(zar2=2)
			Var2:=Var2-playerY
		if(zar2=3)
			Var2:=playerY*3
	}

	if(Var1<0){
		msgbox,,해 달 별, 플레이어2의 승리입니다
		return
	}if(Var2<0){
		msgbox,,해 달 별, 플레이어1의 승리입니다 
		return
	}
	msgbox,,해 달 별,플레이어 1의 남은 금액은 %Var1% `n플레이어 2의 남은 금액은 %Var2%
	MsgBox,,해 달 별,플레이어 1의 칩의 갯수는 %Var1% 입니다
	MsgBox,,해 달 별,플레이어 2의 칩의 갯수는 %Var2% 입니다
	zar18:
	InputBox,zar1,,플레이어 1은 1(해)`,2(달)`,3(별)중 하나를 선택해 주세요
	if (ErrorLevel=1)
	{
		Exitapp
		;MsgBox, 취소버튼은 안됩니다. 다시 입력해주세요
		goto, zar18
	}
	if (zar1>3||zar1<1)
	{
		MsgBox, 값을 잘못 입력했습니다. 다시 입력해주세요 (1~3)
		goto, zar18
	}

	playerX8:
	if(zar1=1){
	zar1:="해"
	}else if(zar1=2){
	zar1:="달"
	}else if(zar1=3){
	zar1:="별"
	}
	InputBox,playerX,,플레이어 1은 %zar1% 를 선택했습니다`n배팅금을 선택해 주세요 (1~4)
	if (ErrorLevel=1)
	{
		Exitapp
		;MsgBox, 취소버튼은 안됩니다. 다시 입력해주세요
		goto, playerX8
	}
	if (playerX>4||playerX<1)
	{
		MsgBox, 값을 잘못 입력했습니다. 다시 입력해주세요 (1~4)
		goto, playerX8
	}

	zar28:
	InputBox,zar2,,플레이어 2는 1(해)`,2(달)`,3(별)중 하나를 선택해 주세요
	if (ErrorLevel=1)
	{
		Exitapp
		;MsgBox, 취소버튼은 안됩니다. 다시 입력해주세요
		goto, zar28
	}
	if (zar2>3||zar2<1)
	{
		MsgBox, 값을 잘못 입력했습니다. 다시 입력해주세요 (1~3)
		goto, zar28
	}

	playerY8:
	if(zar2=1){
	zar2:="해"
	}else if(zar2=2){
	zar2:="달"
	}else if(zar2=3){
	zar2:="별"
	}
	InputBox,playerY,,플레이어 2는 %zar2% 를 선택했습니다`n배팅금을 선택해 주세요 (1~4)
	if (ErrorLevel=1)
	{
		Exitapp
		;MsgBox, 취소버튼은 안됩니다. 다시 입력해주세요
		goto, playerY8
	}
	if (playerY>4||playerY<1)
	{
		MsgBox, 값을 잘못 입력했습니다. 다시 입력해주세요 (1~4)
		goto, playerY8
	}

	if(zar1="해"){
	zar1:=1
	}else if(zar1="달"){
	zar1:=2
	}else if(zar1="별"){
	zar1:=3
	}
	if(zar2="해"){
	zar2:=1
	}else if(zar2="달"){
	zar2:=2
	}else if(zar2="별"){
	zar2:=3
	}
	MsgBox,,해 달 별,A는 %I%입니다




	if(I="해")
	{
		if(zar1=1)
			Var1:=playerX*3
		if(zar1=2)
			Var1:=Var1-playerX
		if(zar1=3)
			Var1:=Var1-playerX
		
		if(zar2=1)
			Var2:=playerY*3
		if(zar2=2)
			Var2:=Var2-playerY
		if(zar2=3)
			Var2:=Var2-playerY
	}

	if(I="달")
	{
		if(zar1=1)
			Var1:=Var1-playerX
		if(zar1=2)
			Var1:=playerX*3
		if(zar1=3)
			Var1:=Var1-playerX


		if(zar2=1)
			Var2:=Var2-playerY
		if(zar2=2)
			Var2:=playerY*3
		if(zar2=3)
			Var2:=Var2-playerY

	}

	if(I="별")
	{
		if(zar1=1)
			Var1:=Var1-playerX
		if(zar1=2)
			Var1:=Var1-playerX
		if(zar1=3)
			Var1:=playerX*3

		if(zar2=1)
			Var2:=Var2-playerY
		if(zar2=2)
			Var2:=Var2-playerY
		if(zar2=3)
			Var2:=playerY*3
	}

	if(Var1<0){
		msgbox,,해 달 별, 플레이어2의 승리입니다
		return
	}if(Var2<0){
		msgbox,,해 달 별, 플레이어1의 승리입니다 
		return
	}

	msgbox,,해 달 별,플레이어 1의 남은 금액은 %Var1% `n플레이어 2의 남은 금액은 %Var2%
	MsgBox,,해 달 별,플레이어 1의 칩의 갯수는 %Var1% 입니다
	MsgBox,,해 달 별,플레이어 2의 칩의 갯수는 %Var2% 입니다
	zar19:
	InputBox,zar1,,플레이어 1은 1(해)`,2(달)`,3(별)중 하나를 선택해 주세요
	if (ErrorLevel=1)
	{
		Exitapp
		;MsgBox, 취소버튼은 안됩니다. 다시 입력해주세요
		goto, zar19
	}
	if (zar1>3||zar1<1)
	{
		MsgBox, 값을 잘못 입력했습니다. 다시 입력해주세요 (1~3)
		goto, zar19
	}
	playerX9:
	if(zar1=1){
	zar1:="해"
	}else if(zar1=2){
	zar1:="달"
	}else if(zar1=3){
	zar1:="별"
	}
	InputBox,playerX,,플레이어 1은 %zar1% 를 선택했습니다`n배팅금을 선택해 주세요 (1~4)
	if (ErrorLevel=1)
	{
		Exitapp
		;MsgBox, 취소버튼은 안됩니다. 다시 입력해주세요
		goto, playerX9
	}
	if (playerX>4||playerX<1)
	{
		MsgBox, 값을 잘못 입력했습니다. 다시 입력해주세요 (1~4)
		goto, playerX9
	}
	zar29:
	InputBox,zar2,,플레이어 2는 1(해)`,2(달)`,3(별)중 하나를 선택해 주세요
	if (ErrorLevel=1)
	{
		Exitapp
		;MsgBox, 취소버튼은 안됩니다. 다시 입력해주세요
		goto, zar29
	}
	if (zar2>3||zar2<1)
	{
		MsgBox, 값을 잘못 입력했습니다. 다시 입력해주세요 (1~3)
		goto, zar29
	}
	playerY9:
	if(zar2=1){
	zar2:="해"
	}else if(zar2=2){
	zar2:="달"
	}else if(zar2=3){
	zar2:="별"
	}
	InputBox,playerY,,플레이어 2는 %zar2% 를 선택했습니다`n배팅금을 선택해 주세요 (1~4)
	if (ErrorLevel=1)
	{
		Exitapp
		;MsgBox, 취소버튼은 안됩니다. 다시 입력해주세요
		goto, playerY9
	}
	if (playerY>4||playerY<1)
	{
		MsgBox, 값을 잘못 입력했습니다. 다시 입력해주세요 (1~4)
		goto, playerY9
	}
	if(zar1="해"){
	zar1:=1
	}else if(zar1="달"){
	zar1:=2
	}else if(zar1="별"){
	zar1:=3
	}
	if(zar2="해"){
	zar2:=1
	}else if(zar2="달"){
	zar2:=2
	}else if(zar2="별"){
	zar2:=3
	}
	MsgBox,,해 달 별,A는 %J%입니다




	if(J="해")
	{
		if(zar1=1)
			Var1:=playerX*3
		if(zar1=2)
			Var1:=Var1-playerX
		if(zar1=3)
			Var1:=Var1-playerX
		
		if(zar2=1)
			Var2:=playerY*3
		if(zar2=2)
			Var2:=Var2-playerY
		if(zar2=3)
			Var2:=Var2-playerY
	}

	if(J="달")
	{
		if(zar1=1)
			Var1:=Var1-playerX
		if(zar1=2)
			Var1:=playerX*3
		if(zar1=3)
			Var1:=Var1-playerX


		if(zar2=1)
			Var2:=Var2-playerY
		if(zar2=2)
			Var2:=playerY*3
		if(zar2=3)
			Var2:=Var2-playerY

	}

	if(J="별")
	{
		if(zar1=1)
			Var1:=Var1-playerX
		if(zar1=2)
			Var1:=Var1-playerX
		if(zar1=3)
			Var1:=playerX*3


		if(zar2=1)
			Var2:=Var2-playerY
		if(zar2=2)
			Var2:=Var2-playerY
		if(zar2=3)
			Var2:=playerY*3
	}

	msgbox,,해 달 별,플레이어 1의 남은 금액은 %Var1% `n플레이어 2의 남은 금액은 %Var2%
	if(Var1 > Var2){
		MsgBox,,해 달 별,플레이어 1의 승리입니다.
	}
	if(Var1 < Var2){
		MsgBox,,해 달 별,플레이어 2의 승리입니다.
	}

	msgbox,,해 달 별,결론 `nA=%A%`nB=%B%`nC=%C%`nD=%D%`nE=%E%`nF=%F%`nG=%G%`nH=%H%`nI =%I%`nJ =%J%
}