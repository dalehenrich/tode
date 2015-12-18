sources
exampleLabelledChart

| b |
b := RTPieBuilder new.
b interaction popup.
b objects: (Array with: Dictionary with: Collection with: Set with: OrderedCollection).
b slice: #numberOfMethods.
b normalizer distinctColor.	
b labelled.
b build.
^ b view