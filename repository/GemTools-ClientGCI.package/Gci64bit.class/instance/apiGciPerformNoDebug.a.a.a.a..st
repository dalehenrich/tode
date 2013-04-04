API
apiGciPerformNoDebug: anOopType a: aString a: anArray a: anInteger a: flagInteger
"  EXTERN_GCI_DEC(OopType)
GciPerformNoDebug( OopType receiver, const char selector[],
        const OopType args[], int numArgs, int flags);
/* FLAGS
 define GCI_PERFORM_FLAG_ENABLE_DEBUG         1
    * make like GciPerform() with respect to debugging. default is debugger is
    * disabled until GciPerformNoDebug returns *

 define GCI_PERFORM_FLAG_DISABLE_ASYNC_EVENTS 2
    * disable async events.  Used for GSI to be able to execute an exception
    * block or method to service RT_ERR_SIGNAL_ABORT,
    *  RT_ERR_SIGNAL_GEMSTONE_SESSION, or ABORT_ERR_LOST_OT_ROOT *

 define GCI_PERFORM_FLAG_SINGLE_STEP  4
    * place a single step break-point at the start of the method to be
    * performed, and then execute to hit that breakpoint.

 define GCI_PERFORM_MAP_SYMBOLS  8
    * THIS OPTION NOT SUPPORTED
    *
    * If this bit is set map the perform's receiver and arg oops will
    * be mapped to the canonical symbol they represent before the
    * action perform is done.

 actual definitions in gcicmn.ht
*/
"
	<apicall: OopType64 'GciPerformNoDebug' (OopType64 char* ulong long long) >
	^self externalCallFailed
