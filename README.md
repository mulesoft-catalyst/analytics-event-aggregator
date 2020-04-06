# Analytics event Splunk Aggregator

This tool is intended to serve as a Splunk aggregator that collects events about API consumption from [Analytics Event Export API](https://anypoint.mulesoft.com/exchange/portals/anypoint-platform/f1e97bc6-315a-4490-82a7-23abe036327a.anypoint-platform/analytics-event-export-api/) and send them to a Splunk instance.


Please, take into account that this version is for Mule Runtime 3.x only.

## How-to use the Mule Application

1. Open **analytics-event-aggregator-local.properties** file, located under **src/main/resources/config** folder.
2. Complete **mule.poll.frequency.seconds** with the desired frequency for the poller (default: 60 seconds).
3. Complete **anypoint.platform.login.user** and **anypoint.platform.login.pass** properties with your Anypoint Platform credentials.
4. Complete **anypoint.platform.root.organizationId** property with the organization root business group (or the BG from where you want to start collecting events).
5. Complete **Splunk HEC** related properties
	* splunk.hec.protocol=
	* splunk.hec.url=
	* splunk.hec.port=
	* splunk.hec.token=
	* splunk.hec.basepath=
	* splunk.hec.path=
	* splunk.index=
	*	splunk.sourcetype=
6. Set the required **VM Argument** to the desired environment. E.g: **-Denv=local**
7. Execute the Mule application.

## Event data

Each event that is sent to Splunk contains the following information:

| Data Field Name | Description |
|-----------------|-------------|
| apiId | API ID associated with the incoming API request. |
| apiName | Name of the API associated with the incoming API request. |
| apiVersion | API Version associated with the incoming API request. |
| apiVersionId | ID of the API Version associated with the incoming API request. |
| clientIp | IP address of the client making the API request. |
| eventId | ID of the event associated with the incoming API request. |
| orgId | ID of the Business Group the API belongs to. |
| path | The path of the client request. |
| policyViolation | The name of the policy violated by the API request (if any). |
| receivedTs | Timestamp of the event associated with the incoming API request. |
| responseTime | The processing time of the API request. |
| requestBytes | The size (in bytes) of the incoming client request. |
| requestDisposition | Status of the event associated with the incoming API request. |
| responseBytes | The size in bytes of the API response. |
| statusCode | The HTTP status code of the response. |
| userAgent | The complete user agent string for the incoming client request. |
| userAgentVersion | The version of the user agent string for the incoming client request. |
| browser | Browser type associated with the incoming API request. |
| osFamily | The client OS type: Mac OS X, iOS, Windows, Linux. |
| osMajorVersion | Operating system major version. |
| osMinorVersion | Operating system minor version. |
| osVersion | Operating system version. |
| city | The city from which the API request originated (inferred by the IP address of the client). |
| hardwarePlatform | The hardware type of the client making the request (such as Mobile, Tablet, Desktop, etc.). |
| country | The country from which the API request originated (inferred by the IP address of the client). |
| continent | The continent from which the API request originated (inferred by the IP address of the client). |
| postalCode | The postal code from which the API request originated (inferred by the IP address of the client). |
| verb | The REST verb associated with the API client request (GET, POST, PATCH, etc.). |

## Final Note

Enjoy and provide feedback / contribute :)
