as yet unclassified
mrpackages
  "mr packages <repository-spec>
      packages @<repository-path>
  "

  | repository |
  repository := self resolveRepositoryReference: (tokens at: 2).
  ^ self
    mrBrowseRepositoryPackges: repository
    label: 'Packages for ' , repository description