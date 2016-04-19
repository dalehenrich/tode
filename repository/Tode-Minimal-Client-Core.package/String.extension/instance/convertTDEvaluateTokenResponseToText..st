*Tode-Minimal-Client-Core
convertTDEvaluateTokenResponseToText: objectSerializer
	"expected response is a String, but could be a TZProxyNotification"

	^ objectSerializer fromString: self