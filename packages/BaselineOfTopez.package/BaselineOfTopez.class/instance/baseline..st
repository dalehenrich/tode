baseline
baseline: spec
  <baseline>
  spec
    for: #'common'
    do: [ 
      spec baseline: 'Ston'.
      spec
        package: 'Topez-Common-Core' with: [ spec requires: #('Ston') ];
        yourself.
      spec
        group: 'default' with: #('Topez-Common-Core');
        group: 'Dev' with: #('default');
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
        package: 'GemTools-ClientGCI'
          with: [ 
              spec
                includes: #('GemTools-ClientSession');
                requires: #('FFI') ];
        package: 'GemTools-ClientSession'
          with: [ 
              spec
                includes: #('GemTools-ClientPlatform');
                requires: #('GemTools-ClientGCI') ];
        package: 'GemTools-ClientPlatform'
          with: [ spec requires: #('GemTools-ClientSession') ];
        yourself ].
  spec
    for: #'pharo'
    do: [ 
      spec
        baseline: 'Ston'
        with: [ spec repository: 'github://dalehenrich/ston:pharo/repository' ].
      spec
        package: 'Topez-Pharo-Common';
        package: 'Topez-Client-GemStone'
          with: [ spec requires: #('GemTools-ClientGCI' 'Topez-Common-Core' 'Topez-Pharo-Common') ];
        yourself.
      spec
        group: 'default' with: #('Client');
        group: 'Client' with: #('Topez-Client-GemStone');
        group: 'GemStone Client' with: #('Client');
        group: 'Dev' with: #('Client');
        yourself ].
  spec
    for: #'gemstone'
    do: [ 
      spec
        baseline: 'RB'
          with: [ 
              spec
                loads: #('AST-Core');
                repository: 'github://dalehenrich/rb:dev/packages' ];
        baseline: 'Ston'
          with: [ spec repository: 'github://dalehenrich/ston:gemstone/repository' ].
      spec
        package: 'Topez-Server-Core'
          with: [ spec requires: #('RB' 'Topez-Common-Core') ];
        package: 'Topez-Server-Tests'
          with: [ spec requires: #('Topez-Server-Core') ];
        package: 'Topez-Server-TestTools'
          with: [ spec requires: 'Topez-Server-Core' ];
        package: 'Topez-Server-DebugTools'
          with: [ spec requires: 'Topez-Server-Core' ];
        package: 'Topez-Server-TestDebugTools'
          with: [ spec requires: #('Topez-Server-DebugTools' 'Topez-Server-TestTools') ];
        package: 'Topez-Server-ProcessTools'
          with: [ spec requires: #('Topez-Server-Core' 'Topez-Server-DebugTools') ];
        package: 'Topez-Server-TestProcessTools'
          with: [ spec requires: #('Topez-Server-ProcessTools' 'Topez-Server-TestTools') ];
        yourself.
      spec
        group: 'default' with: #('GemStone Server');
        group: 'GemStone Server'
          with:
            #('Topez-Server-Core' 'Topez-Server-DebugTools' 'Topez-Server-TestTools');
        group: 'GemStone Server Tests'
          with: #('Topez-Server-Tests' 'Topez-Server-TestDebugTools');
        group: 'Dev' with: #('GemStone Server' 'GemStone Server Tests');
        yourself ].
  spec
    for: #'maglev'
    do: [ 
      spec
        package: 'Topez-MagLev-Core'
          with: [ spec requires: 'Topez-Common-Core' ];
        yourself.
      spec
        package: 'Topez-Common-Core'
        with: [ spec includes: 'Topez-MagLev-Core' ] ]