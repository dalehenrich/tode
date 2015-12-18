testing
includesPoint: point

  ^ ( AthensPolygonTester new polygon: vertices ) includesPoint: point.
"self encompassingRectangle containsPoint: point"