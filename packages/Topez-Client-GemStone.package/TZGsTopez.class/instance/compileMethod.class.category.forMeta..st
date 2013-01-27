coding
compileMethod: source class: classProxy category: category forMeta: forMeta
  | oSource |
  oSource := self session newStringOopType: source.
  ^ self
    doInSession: [ :sess | 
      sess
        receiverNB: self currentEngine
        performNoDebug: #'compileMethod:class:category:forMeta:level:'
        withArgs:
          {oSource.
          classProxy.
          category.
          forMeta.
          2} ]