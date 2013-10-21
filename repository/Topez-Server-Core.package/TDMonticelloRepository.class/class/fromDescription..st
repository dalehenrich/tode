as yet unclassified
fromDescription: aRepositoryDescription
  | url |
  url := Url absoluteFromText: aRepositoryDescription.
  ^ self new
    url: url;
    description: aRepositoryDescription;
    yourself