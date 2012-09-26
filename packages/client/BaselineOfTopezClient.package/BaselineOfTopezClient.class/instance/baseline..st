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
                package: 'GemTools-ClientGCI' with: [ spec requires: #('FFI') ];
                package: 'GemTools-ClientSession'
                    with: [ 
                            spec
                                includes: #('GemTools-ClientPlatform');
                                requires: #('GemTools-ClientGCI') ];
                package: 'GemTools-ClientPlatform' with: [ spec requires: #('GemTools-ClientSession') ];
                package: 'TopezClient-Core' with: [ spec requires: #('GemTools-ClientSession' 'Ston') ];
                package: 'TopezClient-Tests' with: [ spec requires: #('TopezClient-Core') ];
                yourself.
            spec
                group: 'default' with: #('TopezClient-Core');
                group: 'Tests' with: #('TopezClient-Tests') ].
    spec
        for: #'pharo'
        do: [ spec baseline: 'Ston' with: [ spec repository: 'github://dalehenrich/ston:pharo/repository' ] ]