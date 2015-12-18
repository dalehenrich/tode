helpers
addStart: aView
	self writeText: 
'<!DOCTYPE html>
<html>
	<head>
		<title>',self title, '</title>
		<script type="text/javascript">
			var protocol = ("https:" == document.location.protocol)? "https" : "http";
			document.write(unescape("%3Cscript src=\""+ protocol + "://code.jquery.com/jquery-1.11.0.min.js\" type=\"text/javascript\"%3E%3C/script%3E"));
			document.write(unescape("%3Cscript src=\""+ protocol + "://code.jquery.com/jquery-migrate-1.2.1.min.js\" type=\"text/javascript\"%3E%3C/script%3E"));
		</script>
		<script src="',self roassalJSfile,'"></script>
		<style type="text/css">
			body, svg { 
				margin: 0;
				padding: 0;
				-moz-user-select:-moz-none;
				-moz-user-select: none;
				-o-user-select: none;
				-khtml-user-select:none;
				-webkit-user-select:none;
				-ms-user-select:none;
				user-select:none;
			}
			text{
				cursor: default;
			}
		</style>
		<script type="text/javascript">
function buildView() {
	'. 