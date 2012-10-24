as yet unclassified
calculateSourceRangeFor: frameMethodElement frameIndex: aFrameIndex ipOffset: ipOffset in: aGsNMethod for: aGsProcess
    | stepPoint offsets begin |
    stepPoint := aGsNMethod _stepPointForIp: ipOffset level: aFrameIndex isNative: aGsProcess _nativeStack.
    offsets := aGsNMethod _sourceOffsets.
    frameMethodElement
        selectionBegin: (begin := offsets at: (stepPoint min: offsets size));
        selectionEnd: (self calculateSourceRangeEnd: begin in: aGsNMethod sourceString)