baseline
baseline: spec
    <baseline>
    spec
        for: #'squeakCommon'
        do: [ 
            spec blessing: #'baseline'.
            spec
                project: 'FFI'
                    with: [ 
                            spec
                                className: 'ConfigurationOfFFI';
                                versionString: #'stable';
                                repository: 'http://www.squeaksource.com/MetacelloRepository' ];
                yourself.
            spec
                package: 'GemTools-ClientGCI' with: [ spec requires: #('FFI') ];
                package: 'GemTools-ClientSession' with: [ spec requires: #('GemTools-ClientGCI') ];
                yourself.
            spec
                group: 'default' with: #('GemTools-ClientGCI');
                group: 'Tests' with: #() ]