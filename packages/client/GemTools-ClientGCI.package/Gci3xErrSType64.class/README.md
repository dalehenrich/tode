typedef struct {
  OopType       category;                      /* error dictionary       */
  OopType       context;  /* GemStone Smalltalk execution state , a GsProcess */
  OopType       exceptionObj;  /* an instance of AbstractException, or nil; may be nil
                                 if error was not signaled from Smalltalk execution */
  OopType       args[GCI_MAX_ERR_ARGS];        /* arguments to error text */
  int          number;                        /* GemStone error number  */
  int          argCount;                      /* num of arg in the args[]*/
  unsigned char fatal;                         /* nonzero if err is fatal */
  char          message[GCI_ERR_STR_SIZE + 1]; /* null-term. str of err text */
  char          reason[GCI_ERR_reasonSize + 1];

  // If you change this struct,  Smalltalk client FFI code may
  //  need smalltalk code changes.
} GciErrSType;


where:

  GCI_ERR_STR_SIZE  = 1024
  GCI_ERR_reasonSize = 63
  GCI_MAX_ERR_ARGS = 10