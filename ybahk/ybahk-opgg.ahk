FileEncoding, UTF-8 ; UTF-8
OPGG(){
inputbox, OP, ���׿��극���� �����˻�, �˻��� ���̵� �Է��ϼ���,,300,100
if ErrorLevel
return
else
OPGGDummy := UriEncode(OP)
UrlDownloadTofile, http://www.op.gg/summoner/userName=%OPGGDummy%, templol.txt
Fileread, OPGG, templol.txt

RegExMatch(OPGG, "<span class=""tierRank"">(.*?)</span>", tier)
Stringreplace, tier, tier, <span class="tierRank">,,All
Stringreplace, tier, tier, </span>,,All
Stringreplace, tier, tier, 1,I,All
Stringreplace, tier, tier, 2,II,All
Stringreplace, tier, tier, 3,III,All
Stringreplace, tier, tier, 4,IV,All
Stringreplace, tier, tier, 5,V,All
Stringreplace, tier, tier, Bronze,�����,All
Stringreplace, tier, tier, Silver,�ǹ�,All
Stringreplace, tier, tier, Gold,���,All
Stringreplace, tier, tier, Platinum,�÷�Ƽ��,All
Stringreplace, tier, tier, Diamond,���̾�,All
Stringreplace, tier, tier, Master,������,All
Stringreplace, tier, tier, Challenger,ç����,All

;Win
RegExMatch(OPGG, "<span class=""Win"">(.*?)\)", win)
Stringreplace, win, win, <span class="Win">,,All
Stringreplace, win, win, </span>,,All
Stringreplace, win, win, </div>,,All
/*
;Lose
RegExMatch(OPGG, "<span class=""Win"">94��</span>(.*?)</div>", lose)
Stringreplace, lose, lose, <span class="Win">94��</span>,,All
Stringreplace, lose, lose, </div>,,All
*/
/*
RegExMatch(OPGG, "<span class=""winratio"">((.*?)))", winratio)
Stringreplace, winratio, winratio, <span class="winratio">(,,All
Stringreplace, winratio, winratio, <span class="winratio">,,All
Stringreplace, winratio, winratio,  ),,All
Stringreplace, winratio, winratio,  </span>,,All
*/
RegExMatch(OPGG, "<span class=""Name"">(.*?)</span>", SummonerName)
Stringreplace, SummonerName, SummonerName, <span class="Name">,,All
Stringreplace, SummonerName, SummonerName, </span>,,All

;RegExMatch(OPGG, "<div class=""WinRatioText"">(.*?)%</div>" WinRatioText)
;Stringreplace, SummonerName, SummonerName, <div class="WinRatioText">,,All
;Stringreplace, SummonerName, SummonerName, </div>,,All

;MOST CHAMPION
;<div class="ChampionName" title="�� ��">
RegExMatch(OPGG, "<div class=""ChampionName"" title=""(.*?)"">", MostChamp)
Stringreplace, MostChamp, MostChamp, <div class="ChampionName" title=",,All
Stringreplace, MostChamp, MostChamp, ">,,All

;KDA
;<span class="KDA">2.09:1</span>
RegExMatch(OPGG, "<span class=""KDA"">(.*?)</span>", MostChampKDA)
Stringreplace, MostChampKDA, MostChampKDA, <span class="KDA">,,All
Stringreplace, MostChampKDA, MostChampKDA, </span>,,All

RegExMatch(OPGG, "title=""���� ��ŷ ��Ͽ��� ����"" target=""_blank"">(.*?)</span>", rank_S)
Stringreplace, rank_S, rank_S, title="���� ��ŷ ��Ͽ��� ����" target="_blank">,,All
Stringreplace, rank_S, rank_S, <span class="ranking">,,All
Stringreplace, rank_S, rank_S, </span>,,All
Stringreplace, rank_S, rank_S, %A_TAB%,,All

RegExMatch(OPGG, "</span>��(.*?)</a>", rank_B)
Stringreplace, rank_B, rank_B, </span>,,All
Stringreplace, rank_B, rank_B, %A_TAB%,,All
Stringreplace, rank_B, rank_B, </a>,,All
Stringreplace, rank_B, rank_B, ��,��,All

msgbox,,���׿��극���� ���� �˻� ��� �Դϴ�., ���׿��극���� �����˻�`n`n%SummonerName% ���� Ƽ��� %tier% �Դϴ�.`n��� ��ũ���� �·��� %win%`n��Ʈ 1 è�Ǿ��� %MostChamp% KDA : %MostChampKDA% �Դϴ�.%rank_S%%rank_B%
Filedelete, templol.txt
}