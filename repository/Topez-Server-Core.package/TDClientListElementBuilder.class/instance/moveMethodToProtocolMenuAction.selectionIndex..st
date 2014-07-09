menu actions
moveMethodToProtocolMenuAction: listElement selectionIndex: selectionIndex
  | itemAttribute def protocolName protocolNames |
  itemAttribute := listElement itemCache at: selectionIndex.
  def := itemAttribute object.
  protocolNames := self theBehavior categoryNames sorted.
  protocolName := (GsChoiceInteraction
    prompt: 'Choose a protocol'
    labels: protocolNames
    values: protocolNames) signal.
  protocolName ifNil: [ ^ false ].
  def moveToProtocolNamed: protocolName.
  ^ #'refreshList'