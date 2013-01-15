stash
shellId
  shellId ifNil: [ shellId := self windowStatus nextShellWindowId ].
  ^ shellId