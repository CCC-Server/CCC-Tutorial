--[[message
	융합 소환과 어드밴스 소환을 특기로 하는
	U.K의 기본적인 효과를 알아보자.
	
	자신 LP: 5000
	상대 LP: 5000
	목표: 이번 턴 안에 승리하자!
]]
Debug.SetAIName("튜토리얼 가이드")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,5)
Debug.SetPlayerInfo(0,5000,0,0)
Debug.SetPlayerInfo(1,5000,0,0)

--Hand (yours)
Debug.AddCard(128770066,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(32549749,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--Monster Zones (yours)
Debug.AddCard(128770069,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)

--Hand (opponent's)
Debug.AddCard(33245030,1,1,LOCATION_HAND,0,POS_FACEDOWN)

--Monster Zones (opponent's)
local m_1=Debug.AddCard(45025640,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)

--Spell & Trap Zones (opponent's)
local eq_0=Debug.AddCard(41927278,1,1,LOCATION_SZONE,2,POS_FACEUP)

Debug.ReloadFieldEnd()

--Equip Function
local function Equip(c,target)
	Debug.PreEquip(c,target)
	local ctype=c:Type()
	if ctype&TYPE_EQUIP==0 then
		local code=EFFECT_CHANGE_TYPE
		local value=TYPE_EQUIP+TYPE_SPELL
		if c:IsType(TYPE_TRAP) then
			code=EFFECT_ADD_TYPE
			value=TYPE_EQUIP
		elseif ctype&TYPE_UNION~=0 then
			value=value+TYPE_UNION
		elseif ctype&TYPE_TOKEN~=0 then
			value=value+TYPE_TOKEN
		end
		local eff=Effect.CreateEffect(c)
		eff:SetType(EFFECT_TYPE_SINGLE)
		eff:SetCode(code)
		eff:SetValue(value)
		eff:SetProperty(EFFECT_FLAG_CANNOT_DISABLE)
		eff:SetReset(RESET_EVENT+0x17e0000)
		c:RegisterEffect(eff,true)
	end
end

--Equipped Cards
Equip(eq_0,m_1)
aux.BeginPuzzle()