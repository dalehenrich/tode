stash
postCopy
  "windowStatus is shared"

  promptString := actionStack := inputStream := shellWindow := nil.
  shellId := self shellId + 1.
  topezClient := self topezClient copy
    shell: self;
    topezServerProxy;
    yourself