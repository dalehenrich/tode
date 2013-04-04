accessing
reset
  nodeEditors := nodePrinters := nodeBuilders := halos := commands := rootNode := nil.
  self instanceMap values do: [ :tpz | tpz reset ]