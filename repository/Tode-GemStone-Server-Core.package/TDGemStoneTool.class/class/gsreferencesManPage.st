gs
gsreferencesManPage
  | manPage |
  manPage := TDManPage
    commandName: 'references'
    fromString:
      'NAME
  gs references - Find reference paths to the given objects

SYNOPSIS
  gs references [--max=<max-reference-paths>] [--inMemory] <object-id>...

DESCRIPTION
  Return an Dictionary of reference paths for the given list of objects, where the 
  key is the object and the value is an Array of reference paths.

  With --inMemory, only objects in the current session''s temporary object memory
  are returned.

EXAMPLES
  gs references --inMemory 188566017
  gs references 188566017
  gs references 188566017 79171329
  gs references --max=5 188566017 79171329
'.
  ^ manPage