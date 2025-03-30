--[[message
	융합 소환과 어드밴스 소환을 특기로 하는
	U.K의 기본적인 효과를 알아보자.
	
	자신 LP: 100
	상대 LP: 2500
	
	목표: 이번 턴 안에 승리하자!
	힌트: 상대 몬스터의 효과도 이용하세요.
]]
Debug.SetAIName("튜토리얼 가이드")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,5)
Debug.SetPlayerInfo(0,100,0,0)
Debug.SetPlayerInfo(1,2500,0,0)

--Hand (yours)
Debug.AddCard(128770066,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--Monster Zones (yours)
Debug.AddCard(128770069,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)

--Hand (opponent's)
Debug.AddCard(33245030,1,1,LOCATION_HAND,0,POS_FACEDOWN)

--Monster Zones (opponent's)
Debug.AddCard(45025640,1,1,LOCATION_MZONE,2,POS_FACEUP_DEFENSE,true)

Debug.ReloadFieldEnd()
aux.BeginPuzzle()