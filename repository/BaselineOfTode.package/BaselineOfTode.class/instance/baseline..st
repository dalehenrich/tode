baseline
baseline: spec
  <baseline>
  spec
    for: #'common'
    do: [ 
      spec
        baseline: 'RB' with: [ spec loads: #('AST-Core') ];
        baseline: 'Ston'.
      spec
        package: 'Topez-Common-Core' with: [ spec requires: #('Ston') ];
        package: 'Topez-Server-Core'
          with: [ spec requires: #('RB' 'Topez-Common-Core') ];
        package: 'Topez-Common-Tests'
          with: [ spec requires: #('Topez-Common-Core') ];
        yourself.
      spec
        group: 'Common Tests' with: #('Topez-Common-Tests');
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
        package: 'Topez-ClientTravis-Tests'
          with: [ spec requires: #('Topez-Client-GemStone') ];
        yourself.
      spec
        group: 'default' with: #('GemStone');
        group: 'GemStone' with: #('Topez-Client-GemStone');
        group: 'Pharo' with: #();
        group: 'GemStone Tests' with: #('Topez-ClientTravis-Tests');
        group: 'GemStone Dev'
          with: #('GemStone' 'Common Tests' 'GemStone Tests');
        group: 'Pharo Dev' with: #('Pharo' 'Common Tests');
        yourself ].
  spec
    for: #'gemstone'
    do: [ 
      spec
        baseline: 'RB'
          with: [ spec repository: 'github://dalehenrich/rb:dev/repository' ];
        baseline: 'Ston'
          with: [ spec repository: 'github://dalehenrich/ston:gemstone/repository' ].
      spec
        package: 'Tode-GemStone-Server-Core'
          with: [ spec requires: #('Topez-Server-Core') ];
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
        group: 'default' with: #('GemStone');
        group: 'GemStone'
          with:
            #('Tode-GemStone-Server-Core' 'Topez-Server-DebugTools' 'Topez-Server-ProcessTools' 'Topez-Server-TestTools');
        group: 'GemStone Tests'
          with:
            #('Common Tests' 'Topez-Server-Tests' 'Topez-Server-TestDebugTools');
        group: 'GemStone Dev' with: #('GemStone' 'GemStone Tests');
        yourself ].
  spec
    for: #'gs2.4.x'
    do: [ 
      spec
        package: 'Topez-Server-Core'
          with: [ spec includes: 'Topez-Server-24x-Core' ];
        package: 'Topez-Server-24x-Core'
          with: [ spec requires: 'Topez-Server-Core' ];
        package: 'Topez-Server-DebugTools'
          with: [ spec includes: 'Topez-Server-24x-DebugTools' ];
        package: 'Topez-Server-24x-DebugTools'
          with: [ spec requires: 'Topez-Server-DebugTools' ];
        yourself ].
  spec
    for: #(#'gs3.1.x' #'gs3.2.x')
    do: [ 
      spec
        package: 'Topez-Server-DebugTools'
          with: [ spec includes: 'Topez-Server-31x-DebugTools' ];
        package: 'Topez-Server-31x-DebugTools'
          with: [ spec requires: 'Topez-Server-DebugTools' ];
        package: 'Topez-Server-Tests'
          with: [ spec includes: 'Topez-Server-31x-Tests' ];
        package: 'Topez-Server-31x-Tests'
          with: [ spec requires: 'Topez-Server-Tests' ];
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