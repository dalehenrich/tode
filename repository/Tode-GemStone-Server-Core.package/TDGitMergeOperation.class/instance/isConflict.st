testing
isConflict
  ^ (#(#'added' #'modified' #'deleted') includes: self stage) not