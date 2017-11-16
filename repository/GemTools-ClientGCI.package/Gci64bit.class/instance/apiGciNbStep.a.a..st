API-non-blocking
apiGciNbStep: anOopType a: level a: through
"  *   level  0 means step-into semantics starting from top of stack
  *          1 means step-over semantics starting from top of stack
  *          > 1 means step-over semantics from specified level on stack.
  *
  *   level < 0 or (level > GciPerform(aProcess, stackDepth, NULL, 0))
  *          will generate an error
  *
  *   through == TRUE and level == 1 gives step through semantics, stopping
  *         in blocks for which top of stack frame is home method 
  *
   *"
	<apicall: OopType64 'GciNbStep_' (OopType64 long long) >
	^self externalCallFailed
