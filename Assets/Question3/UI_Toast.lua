local UI_Toast=
{
    lb              = nil,
    inited          = false,

    startTime       = 0,
    param           = nil,
    closeCallback   = nil,

}

function UI_Toast:ctor()
	
end

function UI_Toast:start()
    self.param, self.closeCallback = GV.UIMG:GetData(self.gameObject)
    self.lb         = self.lbText:GetComponent("UILabel")
    self.lb.text    = tostring(self.param)
	
    self.startTime  = CS.UnityEngine.Time.time
    self.inited     = true
end

function UI_Toast:update()
    if false == self.inited then
        return
    end

    if CS.UnityEngine.Time.time - self.startTime > 5 then
        GV.UIMG:Close("UI_Toast")
    end
end

function UI_Toast:ondestroy()
    self.lb     	 = nil
end

return UI_Toast