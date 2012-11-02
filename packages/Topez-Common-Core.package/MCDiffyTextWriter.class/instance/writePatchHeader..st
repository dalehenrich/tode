as yet unclassified
writePatchHeader: info
    stream
        nextPutAll: '=============== Diff against ';
        nextPutAll: info name;
        nextPutAll: ' ===============';
        cr;
        cr