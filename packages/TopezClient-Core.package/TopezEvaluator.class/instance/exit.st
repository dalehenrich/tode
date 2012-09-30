accessing
exit
    topezClient ifNil: [ ^ self ].
    topezClient logout