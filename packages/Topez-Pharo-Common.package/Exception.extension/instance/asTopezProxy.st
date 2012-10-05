*topez-pharo-common
asTopezProxy
    | proxyNotificationClass proxy header named |
    proxyNotificationClass := TZProxyError.
    proxy := proxyNotificationClass new.
    header := TZHeaderNative on: self.	"category number context args fatal address"
    proxy header: header.
    named := Dictionary new.
    proxy named: named.
    #(#'messageText' #'tag' #'signaler' #'signalerContext')
        do: [ :instVarName | named at: #'context' put: (proxyNotificationClass new header: (TZHeaderNative on: (self perform: instVarName))) ].
    ^ proxy