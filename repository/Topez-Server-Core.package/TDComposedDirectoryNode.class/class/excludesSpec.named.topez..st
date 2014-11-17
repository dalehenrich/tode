instance creation-compound
excludesSpec: entrySpecList named: nodeName topez: topez
  "
    {
      '/homes/stoneHome' -> #().
      '/homes/systemHome' -> #().
      '/homes/defaultHome' -> #('tode' 'seaside' 'grease').
    }
"

  | composedNode |
  composedNode := self pathComposedDirectoryNodeNamed: nodeName topez: topez.
  entrySpecList
    do: [ :assoc | composedNode addPathNode: assoc key excludes: assoc value ].
  ^ composedNode