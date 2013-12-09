builtins
installGLASSLegacyStreamsString
	^'Stream installLegacyStreamImplementation.
(Globals at: #''PositionableStream_position'') == #''ANSI''
   ifTrue: [
     Globals at: #''PositionableStream_position'' put: #''Legacy''.
     PositionableStream compilePositionMethods ].'