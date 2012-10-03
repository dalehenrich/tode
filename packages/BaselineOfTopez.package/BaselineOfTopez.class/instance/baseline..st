baseline
baseline: spec
    <baseline>
    spec
        for: #'common'
        do: [ 
            spec baseline: 'Ston'.
            spec
                package: 'Topez-Common-Core' with: [ spec requires: #('Ston') ];
                package: 'Topez-CommonTests' with: [ spec requires: #('Topez-Common-Core') ];
                package: 'TopezClient-Core' with: [ spec requires: #('Topez-Common-Core') ];
                package: 'TopezClient-Tests' with: [ spec requires: #('TopezClient-Core' 'Topez-CommonTests') ];
                yourself.
            spec
                group: 'Client' with: #('TopezClient-Core');
                group: 'Client Tests' with: #('TopezClient-Tests');
                group: 'Dev' with: #('Client Tests');
                yourself ].
    spec
        for: #'squeakCommon'
        do: [ 
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
                package: 'TopezClient-Core' with: [ spec requires: #('GemTools-ClientSession') ];
                yourself.
            spec
                group: 'default' with: #('Client');
                yourself ].
    spec
        for: #'pharo'
        do: [ 
            spec baseline: 'Ston' with: [ spec repository: 'github://dalehenrich/ston:pharo/repository' ].
            spec
                package: 'Topez-Common-Core' with: [ spec includes: #('Topez-Pharo-Common') ];
                package: 'Topez-Pharo-Common' with: [ spec requires: #('GemTools-ClientGCI') ];
                yourself ].
    spec
        for: #'gemstone'
        do: [ 
            spec baseline: 'Ston' with: [ spec repository: 'github://dalehenrich/ston:gemstone/repository' ].
            spec
                package: 'Topez-Core' with: [ spec requires: 'Topez-Common-Core' ];
                package: 'Topez-Tests' with: [ spec requires: #('Topez-Core' 'Topez-CommonTests') ];
                yourself.
            spec
                group: 'default' with: #('Server');
                group: 'Server' with: #('Topez-Core');
                group: 'Server Tests' with: #('Topez-Tests');
                group: 'Dev' with: #('Server Tests');
                yourself ]