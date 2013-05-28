*tode-gemstone-server-core
resetHard
  "taking out the rootNode means that all nodeStructure is GONE"

  self resetForInstall.
  rootNode := nil.
  self instanceMap values do: [ :tpz | tpz reset ]