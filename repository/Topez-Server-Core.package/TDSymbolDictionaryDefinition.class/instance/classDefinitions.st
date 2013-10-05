accessing
classDefinitions
  | defs |
  defs := OrderedCollection new.
  self symbolDictionary
    classesDo: [ :aUserProfile :aSymbolDictionary :cls | 
      defs
        add:
          (TDClassDefinition new
            username: self username;
            className: cls name;
            yourself) ].
  ^ defs