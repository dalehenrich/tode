editting
currentWindowId: anInteger
    self status currentWindowId: anInteger.
    (self status windowAt: anInteger)
        ifNotNil: [ :window | 
            window topView
                expand;
                makeSecondTopmost ]