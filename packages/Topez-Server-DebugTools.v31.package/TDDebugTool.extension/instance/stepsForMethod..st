*topez-server-debugtools.v31
stepsForMethod: meth
    "pulled over here because the standard GemStone method assumes that lf is sole line separator"

    | markerArray srcSize srcStr fullResult res allSteps tabSize |
    allSteps := true.
    tabSize := 8.
    srcStr := meth _sourceStringWithFileName withGemstoneLineEndings.	"make sure all lines are terminated with lf"
    srcSize := srcStr size.
    markerArray := meth _buildMarkerArray: allSteps ofSize: srcSize.
    ^ GsNMethod
        _buildMarkedSourceFrom: srcStr
        sourceSize: srcSize
        markers: markerArray
        tabSize: tabSize