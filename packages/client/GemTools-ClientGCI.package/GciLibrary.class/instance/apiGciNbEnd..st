API-non-blocking
apiGciNbEnd: anOopType
	
	"GciNbProgressEType GciNbEnd(void ** result);"

	<apicall: long 'GciNbEnd' (ulong) >
	^self externalCallFailed

"
/* Nonblocking support */
typedef enum {
  GCI_RESULT_NOT_READY,		/* 0 = nothing happened */
  GCI_RESULT_PROGRESSED,		/* 1 = a packet was received */
  GCI_RESULT_READY				/* 2 = your result is now ready */
  } GciNbProgressEType;

result	The address at which GciNbEnd should place a pointer to the result of the nonblocking call when it is complete.

	lppvoid	Pointer to pointer. Used for functions which take a parameter into which they write
		an address. The corresponding argument must be an ExternalAddress (or other indirection
		object), or an object whose first instance variable is such (e.g. an ExternalStructure).
		The address of the ExternalAddress itself is passed, so that on return it contains the
		address written back by the external function. nil is not a valid argument value.
		As a return type answers a pointer instance of LPVOID (i.e. LPVOID* = void**).
"

