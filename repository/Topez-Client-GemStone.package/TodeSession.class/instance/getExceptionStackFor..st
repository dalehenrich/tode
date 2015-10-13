as yet unclassified
getExceptionStackFor: error
	"Execute in seesion, before enabling:
  System gemConfigurationAt:#GemExceptionSignalCapturesStack put: true."

	| oopType stack |
	oopType := self rawReceiverNB: error exceptionObj perform: #stackReport withArgs: #().
	stack := self library localFor: oopType