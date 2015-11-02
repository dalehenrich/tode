project api
projectProjectEntryFromUrl: projectEntryUrl
  | response client entryNodeSource node |
  client := ZnClient new.
  response := client
    beOneShot;
    enforceHttpSuccess: true;
    get: projectEntryUrl asZnUrl.
  entryNodeSource := response decodeFromUTF8.
  node := self objectSerializer fromString: entryNodeSource.
  ^ node