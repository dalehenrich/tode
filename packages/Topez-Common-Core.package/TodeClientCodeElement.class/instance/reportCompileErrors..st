as yet unclassified
reportCompileErrors: compilerErrorOoptype
  | block |
  block := TZGsBlockSend new
    topez: self topez;
    blockSource:
        '[:ex |"return an array with errorNote and errorStart" 
	| errorDetails|
	errorDetails := ex errorDetails at: 1.
	STON toString: {errorDetails at: 3. errorDetails at: 2}]';
    transform: #'ston' -> 1.
  ^ block value: compilerErrorOoptype