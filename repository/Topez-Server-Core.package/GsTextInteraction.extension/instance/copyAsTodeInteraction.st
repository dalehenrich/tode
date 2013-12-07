*topez-server-core
copyAsTodeInteraction
  ^ self requestPassword
    ifTrue: [ 
      TDText new
        requestPassword: self prompt;
        yourself ]
    ifFalse: [ 
      TDText new
        prompt: self prompt;
        template: self template;
        yourself ]