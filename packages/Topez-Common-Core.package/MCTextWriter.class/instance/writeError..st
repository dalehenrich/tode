as yet unclassified
writeError: anException
    stream
        nextPutAll: '==== ERROR ===';
        cr;
        cr;
        nextPutAll: anException description;
        cr;
        cr