local UI_NimList =
{
	btOnePlayer 		= nil,
	btTwoPlayer 		= nil,
	btBack				= nil,
}

function UI_NimList:ctor()
end

function UI_NimList:awake()
	self.btOnePlayer 	= self["btOnePlayer"]
	self.btTwoPlayer 	= self["btTwoPlayer"]
	self.btBack			= self["btBack"]
end

function UI_NimList:start()
	GV.SetOnClick(self.btOnePlayer,  self.onClick_BtOnePlayer, self)
	GV.SetOnClick(self.btTwoPlayer,  self.onClick_BtTwoPlayer, self)
	GV.SetOnClick(self.btBack, 		 self.onClick_BtBack, self)
end

function UI_NimList:update()
	
end

function UI_NimList:onClick_BtOnePlayer(go)
	print("onClick_BtOnePlayer will load level 2")
	GV.LoadLevel(2)
end

function UI_NimList:onClick_BtTwoPlayer(go)
	print("onClick_BtTwoPlayer, will load level 3")
	GV.LoadLevel(3)
end

function UI_NimList:onClick_BtBack(go)
	print("onClick_BtBack")
	GV.UIMG:Close("UI_NimList")
end

function UI_NimList:ondestroy()
	removeEvent(self)
	removeOP(self)
	
	self.btOnePlayer 		= nil
	self.btTwoPlayer 		= nil
	self.btBack				= nil
end

function UI_NimList:onOp(opCode, param)
	local code = tonumber(opCode)
	
	if code == OpCode.JoinRoom then
		
	end
end

function UI_NimList:onEvent(eventCode, ...)
--[[	if eventCode == EventCode.LoginSuccess then
		print("EEEEEEEEEEEEEEEEEEEEEEEEEEEEEE   Login success event")
		self.lbMoney.text = GV.Player:getMoney()
	end--]]
end

return UI_NimList
