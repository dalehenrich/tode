interrupt handling
stopHandlingInterruptSignal
	"Revert to prior SIGINT handling behavior in the VM."

	Smalltalk at: #OSProcess
		ifPresent:
			[:osp |
			osp accessor handlesOsSignals
				ifTrue:
					[osp accessor restoreSignal: osp accessor primSigIntNumber].
			self sigIntSema: nil.
			self sigIntHandler terminate.
			self sigIntHandler: nil]
