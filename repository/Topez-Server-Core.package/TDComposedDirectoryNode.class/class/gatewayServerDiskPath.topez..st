instance creation
gatewayServerDiskPath: diskPath topez: topez
  | path |
  path := diskPath findTokens: '/'.
  ^ self
    link:
      (TDObjectGatewayNode new
        name: path last;
        contents: 'ServerFileDirectory on: ' , diskPath printString)
    topez: topez