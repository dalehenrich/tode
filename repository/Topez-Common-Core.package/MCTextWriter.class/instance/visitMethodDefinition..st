as yet unclassified
visitMethodDefinition: definition
    self writeMethodPreamble: definition.
    self writeMethodSource: definition.
    stream cr