sources
exampleEmphasis

| b |
b := RTPieBuilder new.
b interaction popup.
b objects: (Array with: Dictionary with: Collection with: Set with: OrderedCollection ).
b slice: #numberOfMethods.
b normalizer distinctColor.	
b labelled.
b emphasize: Set by: 20.
b emphasize: Dictionary by: 20.
b build.
^ b view