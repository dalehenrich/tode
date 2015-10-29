project
projectbrowse
  "
  project browse --entry <project-name>
          browse --config <project-name>
          browse --categories <project-name>
          browse --classes <project-name>
          browse --dirty <project-name>
          browse --packages <project-name>
          browse --repositories <project-name>
          browse --tests <project-name>
"

  self
    getSubcommandOptsMixedLongShort:
      {#('entry' nil #'none').
      #('config' nil #'none').
      #('categories' nil #'none').
      #('classes' nil #'none').
      #('dirty' nil #'none').
      #('packages' nil #'none').
      #('repositories' nil #'none').
      #('tests' nil #'none')}