accessing
convertTDEvaluateTokenResponseToText: anObjectSerializer
	^ Text
		string: self description
		attributes:
			{TextEmphasis italic.
			TextEmphasis bold}