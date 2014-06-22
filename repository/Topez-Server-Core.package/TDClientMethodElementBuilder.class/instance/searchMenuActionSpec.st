menu action specs
searchMenuActionSpec
  ^ super searchMenuActionSpec
    ,
      {#('-').
      #('browse references to it in my class' nil #'browseReferencesToItInMyClassMenuAction:selectedText:').
      #('-').
      #('browse my class' $B #'browseFullClassMenuAction:').
      #('browse references to my class' nil #'browseReferencesToMyClassMenuAction:').
      #('browse my class category' nil #'browseMyCategoryMenuAction:').
      #('browse my package' nil #'browseMyPackageMenuAction:').
      #('browse my project' nil #'browseMyProjectMenuAction:')}