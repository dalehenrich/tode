bu
buEntriesForDirectory: directory
  ^ (directory entries
    select: [ :entry | entry isDirectory not and: [ (entry name beginsWith: '.') not ] ])
    sorted: [ :a :b | a modificationTime <= b modificationTime ]