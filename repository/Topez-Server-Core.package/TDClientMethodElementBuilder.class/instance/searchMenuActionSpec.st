menu action specs
searchMenuActionSpec
  ^ super searchMenuActionSpec
    ,
      {#('-').
      #('browse my class' $B #'browseFullClassMenuAction:').
      #('browse references to my class' nil #'browseReferencesMenuAction:').
      #('browse my class category' nil #'browseFullClassMenuAction:').
      #('browse my package' nil #'browseFullClassMenuAction:').
      #('browse my project' nil #'browseFullClassMenuAction:')}