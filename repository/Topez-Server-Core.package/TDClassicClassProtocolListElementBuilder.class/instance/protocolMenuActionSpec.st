menu action specs
protocolMenuActionSpec
  ^ {{('Protocol'
    ->
      {#('add protocol' nil #'addProtocolMenuAction:selectionIndex:').
      #('remove protocol' nil #'removeProtocolMenuAction:selectionIndex:' nil #'forProtocol' false).
      #('rename protocol' nil #'renameProtocolMenuAction:selectionIndex:' nil #'forProtocol' false)})}}