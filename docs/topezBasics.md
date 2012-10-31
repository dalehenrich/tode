Topez Basics
============

Start a topez session:

```
TZNativeEvaluator new open.   "For a session on pharo"
TZGsEvaluator new open.       "For a session on GemStone"
```

This will open a new topez window.  To start a "Class Browser", enter the
following at the topez prompt

```
input topez
```

THe Class list will show up and you can start clicking around and new
windows will open.


To bring up a browser on a particular class (or regexp-ish):
```
edit class ^TZ
```
