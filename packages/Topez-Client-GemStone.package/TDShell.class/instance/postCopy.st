stash
postCopy
  "windowStatus is shared"

  shellId := promptString := actionStack := inputStream := shellWindow := nil.
  topezClient := self topezClient copy
    shell: self;
    topezServerProxy;
    yourself