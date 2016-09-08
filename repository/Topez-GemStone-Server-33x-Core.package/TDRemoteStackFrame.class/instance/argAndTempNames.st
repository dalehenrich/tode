private
argAndTempNames
  argAndTempNames
    ifNil: [ 
      | resultString |
      resultString := self session
        executeBlock: [ :processOop | 
          | process fc strm ar sz |
          strm := WriteStream on: String new.
          strm nextPut: $[.
          process := Object _objectForOop: processOop.
          ar := fc := process _frameContentsAt: 9.
          sz := ar size.
          1 to: sz do: [ :i | 
            strm
              space;
              nextPutAll: (ar at: i) asString.
            i < sz
              ifTrue: [ strm nextPut: $, ] ].
          strm nextPut: $].
          strm contents ].
      argAndTempNames := STON fromString: resultString ].
  ^ argAndTempNames