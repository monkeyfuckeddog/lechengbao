local audioPrefabPath = "Prefab/AudioSource"
local FXMG = {
    
}

function FXMG:ctor(self)
	
end

function FXMG:Play(abName, fxPath, fxParent, fxPos, fxScale, fxRotation, timeout)
    local obj = GV.GenGameObject(abName, fxPath)
	assert(obj, "fx do not inited, may be it is not exist")

	if nil ~= fxParent then
		obj.transform.parent = fxParent.transform
	end
	
	if nil ~= fxPos then
		obj.transform.localPosition = fxPos
	end
	
	if nil ~= fxScale then
		obj.transform.localScale = fxScale
	end
	
	if nil ~= fxRotation then
		obj.transform.localRotation = fxRotation
	end
	
	if nil ~= timeout and timeout > 0 then
		CS.UnityEngine.Object.Destroy(obj, timeout)
	end
end

return FXMG








