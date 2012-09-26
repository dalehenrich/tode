baseline
baseline: spec
    <baseline>
    spec
        for: #'squeakCommon'
        do: [ 
            spec baseline: 'Ston'.
            spec
                configuration: 'FFI'
                    with: [ 
                            spec
                                versionString: #'stable';
                                repository: 'http://www.squeaksource.com/MetacelloRepository' ];
                yourself.
            spec
                package: 'GemTools-ClientGCI' with: [ spec requires: #('FFI' 'Ston') ];
                package: 'GemTools-ClientSession' with: [ spec requires: #('GemTools-ClientGCI') ];
                yourself.
            spec
                group: 'default' with: #('GemTools-ClientGCI');
                group: 'Tests' with: #() ].
    spec
        for: #'pharo'
        do: [ spec baseline: 'Ston' with: [ spec repository: 'github://dalehenrich/ston:pharo/packages' ] ]