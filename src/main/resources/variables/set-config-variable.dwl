%dw 1.0
%output application/java
---
{
	splunkIndex: p('splunk.index'),
	splunkSourceType: p('splunk.sourcetype')
}
