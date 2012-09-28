baseline
baseline: spec
    <baseline>
    spec
        for: #'common'
        do: [ 
            spec baseline: 'Ston'.
            spec
                package: 'Topez-STON' with: [ spec requires: #('Ston') ];
                package: 'Topez-STONTests' with: [ spec requires: #('Topez-STON') ];
                package: 'TopezClient-STON' with: [ spec requires: #('Topez-STON') ];
                package: 'TopezClient-Core' with: [ spec requires: #('TopezClient-STON') ];
                package: 'TopezClient-Tests' with: [ spec requires: #('TopezClient-Core' 'Topez-STONTests') ];
                yourself.
            spec
                package: 'Topez-Core' with: [ spec requires: 'Topez-STON' ];
                package: 'Topez-Tests' with: [ spec requires: #('Topez-Core' 'Topez-STONTests') ];
                yourself.
            spec
                group: 'Client' with: #('TopezClient-Core');
                group: 'Client Tests' with: #('TopezClient-Tests');
                group: 'Server' with: #('Topez-Core');
                group: 'Server Tests' with: #('Topez-Tests');
                group: 'Dev' with: #('Client Tests' 'Server Tests');
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
                package: 'Topez-STON' with: [ spec includes: #('Topez-Pharo-STON') ];
                package: 'Topez-Pharo-STON' with: [ spec requires: #('GemTools-ClientGCI') ];
                yourself ].
    spec
        for: #'gemstone'
        do: [ 
            spec baseline: 'Ston' with: [ spec repository: 'github://dalehenrich/ston:gemstone/repository' ].
            spec
                group: 'default' with: #('Server');
                yourself ]