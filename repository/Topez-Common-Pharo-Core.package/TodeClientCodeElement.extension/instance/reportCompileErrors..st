*Topez-Common-Pharo-Core
reportCompileErrors: compilerErrorOoptype
  | block |
  block := (Smalltalk at: #'TZGsBlockSend') new
    topez: self topez;
    blockSource:
        '[:ex |"return an array with errorNote and errorStart" 
	| errorDetails|
	errorDetails := ex errorDetails at: 1.
	{errorDetails at: 3. errorDetails at: 2}]';
    transform: #'ston' -> 1.
  ^ block value: compilerErrorOoptype