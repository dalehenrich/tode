baseline
baseline: spec
    <baseline>
    spec
        for: #'common'
        do: [ 
            spec baseline: 'Ston'.
            spec
                package: 'Topez-Core' with: [ spec requires: 'Topez-STON' ];
                package: 'Topez-STON' with: [ spec requires: #('Ston') ];
                package: 'Topez-Tests' with: [ spec requires: 'Topez-Core' ];
                yourself.
            spec
                group: 'default' with: #('Core');
                group: 'Core' with: #('Topez-Core');
                group: 'Tests' with: #('Topez-Tests') ].
    spec
        for: #'gemstone'
        do: [ spec baseline: 'Ston' with: [ spec repository: 'github://dalehenrich/ston:gemstone/repository' ] ]