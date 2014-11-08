instance creation
includesSpec: entrySpecList named: nodeName topez: topez
  "
    {
      '/homes/stoneHome' -> #().
      '/homes/systemHome' -> #().
      '/homes/defaultHome' -> #('tode' 'seaside' 'grease').
    }
"

  | entryList |
  entryList := OrderedCollection new.
  entrySpecList
    do: [ :assoc | 
      | entry |
      entry := TDPathComposedDirectoryEntry new
        path: assoc key;
        includes: assoc value;
        topez: topez;
        yourself.
      entryList add: entry ].
  ^ self new
    name: nodeName;
    contents:
        (TDPathComposedDirectoryNodeContents new
            entryList: entryList;
            yourself);
    topez: topez;
    yourself