API
apiGciStep: anOopType a: level 
"  *   level  0 means step-into semantics starting from top of stack
  *          1 means step-over semantics starting from top of stack
  *          > 1 means step-over semantics from specified level on stack.
  *
  *   level < 0 or (level > GciPerform(aProcess, stackDepth, NULL, 0))
  *          will generate an error
  *"
	<apicall: OopType64 'GciStep' (OopType64 long) >
	^self externalCallFailed
