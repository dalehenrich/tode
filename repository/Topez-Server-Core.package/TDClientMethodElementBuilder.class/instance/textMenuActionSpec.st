menu action specs
textMenuActionSpec
  ^ super textMenuActionSpec
    ,
      {#('-').
      {'indent on CR'.
      (Character cr).
      #'crWithIndent:'.
      #'executeLocalMenuAction:keyboardEvent:'}}