project api
projectBrowseProjectCategories: projectName
  | registration |
  registration := self resolveProjectRegistrationReference: projectName.
  ^ self projectBrowseProjectCategoriesFor: registration