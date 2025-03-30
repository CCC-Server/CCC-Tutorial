--[[message
	융합 소환과 어드밴스 소환을 특기로 하는
	U.K의 기본적인 효과를 알아보자.
	
	자신 LP: 100
	상대 LP: 8000
	목표: 이번 턴 안에 승리하자!
]]
Debug.SetAIName("튜토리얼 가이드")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,5)
Debug.SetPlayerInfo(0,100,0,0)
Debug.SetPlayerInfo(1,8000,0,0)

--Extra Deck (yours)
Debug.AddCard(128770070,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)

--Monster Zones (yours)
Debug.AddCard(128770067,0,0,LOCATION_MZONE,1,POS_FACEUP_ATTACK,true)
Debug.AddCard(128770067,0,0,LOCATION_MZONE,3,POS_FACEUP_ATTACK,true)

Debug.ReloadFieldEnd()
aux.BeginPuzzle()