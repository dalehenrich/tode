debugging
fetchFrameFor: process frameId: frameId level: level
    "helper"

    self
        doInSession: [ :sess | 
            | frameOffset gsNMethod frameArray |
            frameOffset := sess receiverNB: process performNoDebug: '_frameOffsetAt:' withArgs: {frameId}.
            frameArray := sess receiverNB: process performNoDebug: '_frameContentsAt:' withArgs: {frameOffset}.
            gsNMethod := sess fetchOopOopType: frameArray index: 1.
            ^ (sess receiverNB: gsNMethod performNoDebug: '_descrForStackPadTo:' withArgs: {45})
                , (sess receiverNB: process performNoDebug: '_stepPointStringAt:' withArgs: {frameOffset}) ]