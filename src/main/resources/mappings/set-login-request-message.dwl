%dw 1.0
%output application/json
---
{
	username: p('anypoint.platform.login.user'),
	password: p('anypoint.platform.login.pass')
}