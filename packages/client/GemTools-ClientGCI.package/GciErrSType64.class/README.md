#DEFINE GCI_MAX_ERR_ARGS	10
#DEFINE GCI_ERR_STR_SIZE	1024

typedef struct {
		OopType			category;                      		/* error dictionary       */
		OopType			context;  						/* GemStone Smalltalk execution state , a GsProcess */
		OopType			args[GCI_MAX_ERR_ARGS];        /* arguments to error text */
		int				number;                        	/* GemStone error number  */
		int				argCount;                      		/* num of arg in the args[]*/
		unsigned char	fatal;                         		/* nonzero if err is fatal */
		char			message[GCI_ERR_STR_SIZE + 1]; /* null-term. str of err text */
} GciErrSType;

/* int is signed, 4-byte */