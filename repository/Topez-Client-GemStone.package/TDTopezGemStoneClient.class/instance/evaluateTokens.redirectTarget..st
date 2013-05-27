as yet unclassified
evaluateTokens: tokens redirectTarget: redirectTarget
  | stonString transcriptOop |
  stonString := STON toString: tokens.
  transcriptOop := self session clientForwarderCache keyAtValue: Transcript.
  [ 
  self session clientForwarderCache at: transcriptOop put: self shell console.
  ^ self session
    executeStringExpectingStringNB:
      '(' , self todeServerAccessString , ' for: ' , self shell shellId asString
        , ') evaluateSTONTokens:' , stonString printString , ' redirectTarget: '
        , redirectTarget printString
    envId: self environmentId ]
    ensure: [ self session clientForwarderCache at: transcriptOop put: Transcript ]