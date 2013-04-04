On some platforms it is possible to use OSProcess to read and write the standard input, output and error streams. In that case, ExternalCommandShell allows Squeak to be used as a traditional text mode command shell.

When used in a headless Squeak image, ExternalCommandShell behaves like a traditional Unix command shell, except that it has the ability to evaluate Smalltalk expressions as well as other programs and commands. On a Unix system running a Squeak shell in a headless image, the Smalltalk display can be opened by entering the command "UnixProcess recapitate" at the Squeak shell prompt.

ExternalCommandShell has one instance, which is accessible as "ExternalCommandShell inSmalltalk". The shell can be stopped with "ExternalCommandShell stop" and restarted with "ExternalCommandShell start". If the shell is running when Squeak is shut down, it will be automatically be restarted when the image is restarted.
