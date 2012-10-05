*topez-pharo-common
asTopezProxy
    | proxyNotificationClass proxy header named messageMap |
    proxyNotificationClass := TZProxyError.
    proxy := proxyNotificationClass new.
    header := TZHeaderNative on: self.	"category number context args fatal address"
    proxy header: header.
    named := Dictionary new.
    proxy named: named.
    messageMap := #(#'messageText' #'messageText' #'tag' #'tag' #'signaler' #'signaler' #'context' #'signalerContext').
    1 to: messageMap size by: 2 do: [ :index | 
        | messageName selector |
        messageName := messageMap at: index.
        selector := messageMap at: index + 1.
        named at: messageName put: (TZProxyNative new header: (TZHeaderNative on: (self perform: selector))) ].
    ^ proxy