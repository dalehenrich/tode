instance creation
new

	self notify: self name, ': Only one instance of ExternalCommandShell or any of its subclasses should exist in the image. Use #inSmalltalk to obtain the singleton instance.'.
	self shouldNotImplement