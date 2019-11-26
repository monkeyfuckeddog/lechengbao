local RegisterReq=
{
	loginName,
	password,
}

function RegisterReq:ctor()
	
end

function RegisterReq:ToJson()
	local ret={}
	ret.loginName=self.loginName
	ret.password=self.password
	return encode(ret)
end

return RegisterReq