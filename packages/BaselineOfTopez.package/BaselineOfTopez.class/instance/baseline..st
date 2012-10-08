baseline
baseline: spec
    <baseline>
    spec
        for: #'common'
        do: [ 
            spec baseline: 'Ston'.
            spec
                package: 'Topez-Common-Core' with: [ spec requires: #('Ston') ];
                package: 'Topez-Common-Tests' with: [ spec requires: #('Topez-Common-Core') ];
                package: 'Topez-Client-Core' with: [ spec requires: #('Topez-Common-Core') ];
                package: 'Topez-Client-Tests' with: [ spec requires: #('Topez-Client-Core' 'Topez-Common-Tests') ];
                yourself.
            spec
                group: 'Client' with: #('Topez-Client-Core');
                group: 'Client Tests' with: #('Topez-Client-Tests');
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
                yourself.
            spec
                group: 'default' with: #('Client');
                yourself ].
    spec
        for: #'pharo'
        do: [ 
            spec baseline: 'Ston' with: [ spec repository: 'github://dalehenrich/ston:pharo/repository' ].
            spec
                package: 'Topez-Client-GemStone'
                    with: [ spec requires: #('Topez-Common-Core' 'Topez-Pharo-Common' 'GemTools-ClientGCI') ];
                package: 'Topez-Pharo-Common';
                package: 'Topez-Client-Pharo'
                    with: [ spec requires: #('Topez-Common-Core' 'Topez-Pharo-Common' 'Topez-Pharo-Client') ];
                package: 'Topez-Pharo-Client';
                package: 'Topez-Pharo-Tests' with: [ spec requires: #('Topez-Client-Tests') ];
                yourself.
            spec
                group: 'Client Tests' with: #('Topez-Client-Tests');
                group: 'Client' with: #('Topez-Client-GemStone' 'Topez-Client-Pharo');
                yourself ].
    spec
        for: #'gemstone'
        do: [ 
            spec baseline: 'Ston' with: [ spec repository: 'github://dalehenrich/ston:gemstone/repository' ].
            spec
                package: 'Topez-Server-Core' with: [ spec requires: 'Topez-Common-Core' ];
                package: 'Topez-Server-Tests' with: [ spec requires: #('Topez-Server-Core' 'Topez-Common-Tests') ];
                yourself.
            spec
                group: 'default' with: #('Server');
                group: 'Server' with: #('Topez-Server-Core');
                group: 'Server Tests' with: #('Topez-Server-Tests');
                group: 'Dev' with: #('Server Tests');
                yourself ]