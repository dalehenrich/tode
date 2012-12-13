as yet unclassified
contents
    ^ (self listBlock value: self)
        collect: [ :each | self renderNameText: each , self elementExtension textAttributes: self elementRenderNameTextAttributes ]