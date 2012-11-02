as yet unclassified
writeVersionInfo: aVersionInfo
    stream
        nextPutAll: '==================== Summary ====================';
        cr;
        cr;
        nextPutAll: aVersionInfo summary;
        cr;
        cr