%dw 1.0
%output application/java
---
payload.data map {
	environmentId: $.id,
	environmentName: $.name
}