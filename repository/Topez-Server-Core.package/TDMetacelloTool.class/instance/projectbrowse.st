project
projectbrowse
  "
  project browse [--entry] [--baseline] [--configuration] [--categories] [--dirty] [--packages] [--repositories] [--tests] <project-name>
"

  | projectName |
  self
    getSubcommandOptsMixedLongShort:
      {#('entry' nil #'none').
      #('baseline' nil #'none').
      #('configuration' nil #'none').
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
  subOptions isEmpty
    ifTrue: [ subOptions at: 'classes' put: nil ].
  subOptions
    at: 'entry'
    ifPresent: [ :ignored | self projectBrowseProjectEntry: projectName ].
  subOptions
    at: 'configuration'
    ifPresent: [ :ignored | self projectBrowseProjectBaseline: projectName ].
  subOptions
    at: 'configuration'
    ifPresent: [ :ignored | self projectBrowseProjectBaselineOrConfiguration: projectName ].
  subOptions
    at: 'categories'
    ifPresent: [ :ignored | self projectBrowseProjectCategories: projectName ].
  subOptions
    at: 'classes'
    ifPresent: [ :ignored | self projectBrowseProjectClasses: projectName ].
  subOptions
    at: 'dirty'
    ifPresent: [ :ignored | self projectBrowseProjectDirtyPackages: projectName ].
  subOptions
    at: 'packages'
    ifPresent: [ :ignored | self projectBrowseProjectPackages: projectName ].
  subOptions
    at: 'repositories'
    ifPresent: [ :ignored | self projectBrowseProjectRepositories: projectName ].
  subOptions
    at: 'tests'
    ifPresent: [ :ignored | self projectBrowseProjectTests: projectName ]