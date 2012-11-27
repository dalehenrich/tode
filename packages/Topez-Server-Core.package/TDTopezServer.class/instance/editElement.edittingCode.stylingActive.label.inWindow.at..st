accessing
editElement: aServerElement edittingCode: edittingCode stylingActive: stylingActive label: labelString inWindow: windowIdOrNil at: windowLocation
    | clientElement |
    clientElement := TDClientSourceElement new
        clientForwarderOop: ClientForwarder new asOop;
        serverElementOop: aServerElement asOop;
        getSelector: #'source';
        setSelector: #'source';
        yourself.
    ^ self
        editElement: clientElement
        edittingCode: edittingCode
        stylingActive: stylingActive
        label: labelString
        inWindow: windowIdOrNil
        at: windowLocation
        level: 1