as yet unclassified
writeDefinitions: aCollection
    (MCDependencySorter sortItems: aCollection)
        do: [ :ea | 
            ea accept: self.
            stream cr ]
        displayingProgress: 'Writing definitions...'