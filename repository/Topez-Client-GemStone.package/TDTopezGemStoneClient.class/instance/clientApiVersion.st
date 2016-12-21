as yet unclassified
clientApiVersion
	"Version changes whenever the api between client and server changes:
   Major version changes when incompatible API changes have been made.
   Minor version changes when API is extended/changed in a backwards compatible manner.
   Patch version changes whenever bugfixes are made in the API"

	"1.0.0 - initial version"

	"1.1.0 - introduce TDEventsCache"

	"1.2.0 - add additional instance variables (netLDIPort and netLDIPortRange) to TDSessionDescription"

	"1.3.0 - debugger uses #closeWith: callback when dbContinue runs off the end,
           server-side effectiveApiVersion"

	"1.4.0 - use client callback #dbStepThrough:forProcessOop: for debugger step thru ... GemStone3.2 and greater"

	^ '1.4.0' asMetacelloVersionNumber