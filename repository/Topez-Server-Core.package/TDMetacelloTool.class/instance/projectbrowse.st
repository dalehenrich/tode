project
projectbrowse
  "
  project browse [--entry] [--config] [--categories] [--dirty] [--packages] [--repositories] [--tests] <project-name>
"

  | projectName |
  self
    getSubcommandOptsMixedLongShort:
      {#('entry' nil #'none').
      #('config' nil #'none').
      #('categories' nil #'none').
      #('classes' nil #'none').
      #('dirty' nil #'none').
      #('packages' nil #'none').
      #('repositories' nil #'none').
      #('tests' nil #'none')}.
  projectName := subArguments
    at: 1
    ifAbsent: [ 
      self
        error:
          'Missing required argument <project-name>. See `man project browse` for details.' ].
  subOptions
    at: 'entry'
    ifPresent: [ :ignored | ^ self projectBrowseProjectEntry: projectName ].
  subOptions
    at: 'config'
    ifPresent: [ :ignored | ^ self projectBrowseProjectBaselineOrConfiguration: projectName ].
  subOptions
    at: 'categories'
    ifPresent: [ :ignored | ^ self projectBrowseProjectCategories: projectName ].
  subOptions
    at: 'classes'
    ifPresent: [ :ignored | ^ self projectBrowseProjectClasses: projectName ].
  subOptions
    at: 'dirty'
    ifPresent: [ :ignored | ^ self projectBrowseProjectDirtyPackages: projectName ].
  subOptions
    at: 'packages'
    ifPresent: [ :ignored | ^ self projectBrowseProjectPackages: projectName ].
  subOptions at: 'repositories' ifPresent: [ :ignored |  ].
  subOptions at: 'tests' ifPresent: [ :ignored |  ]