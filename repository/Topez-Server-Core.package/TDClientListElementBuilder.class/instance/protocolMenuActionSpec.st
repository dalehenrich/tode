menu action specs
protocolMenuActionSpec
  ^ {{('Protocol'
    ->
      {#('add protocol' nil #'addProtocolMenuAction:selectionIndex:' nil #'forMethodOrProtocol' true).
      #('browse protocol' $f #'browseProtocolMenuAction:selectionIndex:' nil #'forMethodOrProtocol' false).
      #('remove protocol' nil #'removeProtocolMenuAction:selectionIndex:' nil #'forProtocol' false).
      #('rename protocol' nil #'renameProtocolMenuAction:selectionIndex:' nil #'forProtocol' false)})}}