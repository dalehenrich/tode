#DEFINE GCI_MAX_ERR_ARGS	10
#DEFINE GCI_ERR_STR_SIZE	400

typedef struct {
	OopType		category;
	long		number;
	OopType		context;
	char		message[GCI_ERR_STR_SIZE + 1];
	OopType		args[GCI_MAX_ERR_ARGS];
	long		argCount;
	BoolType	fatal;
} GciErrSType;

/* long is signed, 4-byte */
/* BoolType is a byte	*/