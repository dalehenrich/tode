interrupt handling
startHandlingInterruptSignal
	"Whenever a SIGINT is received, forward it to my sigIntSema."

	| sema |
	sigIntHandler ifNotNil: [sigIntHandler terminate. self sigIntHandler: nil].
	Smalltalk at: #OSProcess
		ifPresent:
			[:osp |
			osp accessor handlesOsSignals ifTrue:
				[sema := osp accessor forwardSignal: osp accessor primSigIntNumber.
				sema ifNotNil: [self sigIntSema: sema].
				self sigIntHandler]]
