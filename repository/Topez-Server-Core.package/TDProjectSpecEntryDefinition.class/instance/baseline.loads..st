initialization
baseline: name loads: loadStringOrCollection
  self
    projectSpec:
      ((MetacelloMCBaselineOfProjectSpec for: MetacelloMCBaselineProject new)
        name: name;
        loads: loadStringOrCollection;
        yourself)