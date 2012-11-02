as yet unclassified
writeMethodPreamble: definition
    stream
        nextPutAll: '----- Method: ';
        nextPutAll: definition fullClassName;
        nextPutAll: '>>';
        nextPutAll: definition selector;
        nextPutAll: ' (in category ';
        nextPutAll: definition category asString printString;
        nextPutAll: ') -----';
        cr