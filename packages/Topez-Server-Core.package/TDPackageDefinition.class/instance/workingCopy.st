as yet unclassified
workingCopy
  ^ MCWorkingCopy allManagers detect: [ :wc | wc packageName = self packageName ] ifNone: [  ]