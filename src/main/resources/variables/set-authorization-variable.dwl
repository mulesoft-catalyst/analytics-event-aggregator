%dw 1.0
%output application/java
---
"Bearer " ++ payload.access_token