private
frameDict
  ^ (self dynamicInstVarAt: #'frameDict')
    ifNil: [ 
      | stonString frameDict |
      stonString := self session
        executeBlock: [ :processOop :fIndex | 
          | argAndTempNamesStrm method process fc strm stepPoint sourceOffsetAtStepPoint inClassName ipOffset frameSelf receiver rawReceiver ar sz encodeSourceBlock escapesMap |
          process := Object _objectForOop: processOop.
          escapesMap := Dictionary new
            at: 8 put: '\b';
            at: 9 put: '\t';
            at: 10 put: '\n';
            at: 12 put: '\f';
            at: 13 put: '\r';
            at: 34 put: '\"';
            at: 39 put: '\''';
            at: 92 put: '\\';
            yourself.
          encodeSourceBlock := [ :string :stream | 
          string
            do: [ :char | 
              | code encoding |
              ((code := char codePoint) < 127
                and: [ (encoding := escapesMap at: code ifAbsent: [  ]) notNil ])
                ifTrue: [ stream nextPutAll: encoding ]
                ifFalse: [ stream nextPut: char ] ] ].
          fc := process _frameContentsAt: fIndex.
          method := fc at: 1.
          ipOffset := fc at: 2.
          stepPoint := method
            _stepPointForIp: ipOffset
            level: fIndex
            useNext: process _nativeStack.
          sourceOffsetAtStepPoint := method _sourceOffsetsAt: stepPoint.
          method inClass ifNotNil: [ :cl | inClassName := cl name asString ].
          frameSelf := fc at: 8.
          receiver := frameSelf ifNil: [ fc at: 10 ].
          rawReceiver := fc at: 10.
          argAndTempNamesStrm := WriteStream on: String new.
          argAndTempNamesStrm nextPut: $[.
          ar := fc at: 9.
          sz := ar size.
          1 to: sz do: [ :i | 
            argAndTempNamesStrm
              space;
              nextPutAll: (ar at: i) asString printString.
            i < sz
              ifTrue: [ argAndTempNamesStrm nextPut: $, ] ].
          argAndTempNamesStrm nextPut: $].
          strm := WriteStream on: String new.
          strm
            nextPut: ${;
            nextPutAll:
                '''argAndTempNames'' : ' , argAndTempNamesStrm contents , ',';
            nextPutAll:
                '''frameSelfOop'' : ' , frameSelf asOop printString , ',';
            nextPutAll:
                '''frameSelfClassOop'' : ' , frameSelf class asOop printString , ',';
            nextPutAll:
                '''frameSelfClassName'' : ' , frameSelf class name asString printString , ',';
            nextPutAll:
                '''homeMethodOop'' : ' , method homeMethod asOop printString , ',';
            nextPutAll: '''inClassName'' : ' , inClassName printString , ',';
            nextPutAll:
                '''inClassOop'' : ' , method inClass asOop printString , ',';
            nextPutAll: '''ipOffset'' : ' , ipOffset printString , ',';
            nextPutAll:
                '''isMethodForBlock'' : ' , method isMethodForBlock printString , ',';
            nextPutAll: '''methodOop'' : ' , method asOop printString , ',';
            nextPutAll:
                '''rawReceiverOop'' : ' , rawReceiver asOop printString , ',';
            nextPutAll: '''receiverOop'' : ' , receiver asOop printString , ',';
            nextPutAll:
                '''selector'' : ' , method homeMethod selector printString , ',';
            nextPutAll:
                '''sourceOffsetAtStepPoint'' : ' , sourceOffsetAtStepPoint printString , ',';
            nextPutAll: '''stepPoint'' : ' , stepPoint printString , ',';
            yourself.
          strm nextPutAll: '''homeMethodSourceString'' : '''.
          encodeSourceBlock value: method homeMethod sourceString value: strm.
          strm
            nextPutAll: ''',';
            nextPutAll: '''sourceString'' : '''.
          encodeSourceBlock value: method sourceString value: strm.
          strm
            nextPutAll: '''';
            nextPut: $};
            yourself.
          strm contents ]
        with: self processOop
        with: self frameIndex.
      frameDict := STON fromString: stonString.
      self dynamicInstVarAt: #'frameDict' put: frameDict ]