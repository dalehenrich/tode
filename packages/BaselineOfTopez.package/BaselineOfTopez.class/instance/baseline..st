baseline
baseline: spec
    <baseline>
    spec
        for: #'common'
        do: [ 
            spec package: 'Topez-Core'.
            spec package: 'Topez-Tests' with: [ spec requires: 'Topez-Core' ].
            spec
                group: 'default' with: #('Core');
                group: 'Core' with: #('Topez-Core');
                group: 'Tests' with: #('Topez-Tests') ]