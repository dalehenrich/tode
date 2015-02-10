# Release Notes 0.0.3

- [Project Entry registration](#project-entry-registration)

###Project Entry registration
The *project entry* is used by tODE to specify how a project is to by handled by the `project` family of commands (use the tODE command `man project` for more information about the `project` family of commands).

A *project entry* has attributes that match up with arguments you would use in a [**Metacello** load command][3].
For example the following [*project entry* for Seaside31][4]:

```Smalltalk
^ TDProjectSpecEntryDefinition new
    baseline: 'Seaside3'
      repository: 'github://GsDevKit/Seaside31:3.1.?/repository'
      loads: #('Development' 'Zinc' 'FastCGI' 'Examples' 'Tests');
    status: #(#'inactive');
    locked: false;
    yourself
```

uses the following Metacello expression for loading:

```Smalltalk
Metacello new
  baseline: 'Seaside3';
  repository: 'github://GsDevKit/Seaside31:3.1.?/repository'
  load: #('Development' 'Zinc' 'FastCGI' 'Examples' 'Tests')
```

If the `lock` attribute is true, the following statement is executed when the list of project entries is created:

```Smalltalk
Metacello new
  baseline: 'Seaside3';
  repository: 'github://GsDevKit/Seaside31:3.1.?/repository'
  lock
```

If the `status` attribute includes `#active`, then the project is listed as bold in the `project list`:

![project list][4]



You can edit the *project entry* to change the attributes.
For example, if you have a local clone of the tode repository, you would change the *project entry* to point to your local clone:

```Smalltalk
  | project |
  project := TDProjectSpecEntryDefinition new
    baseline: 'Tode'
      repository: 'filetree:///opt/git/tode/repository'
      loads: 'GemStone Dev';
    status: #(#'inactive');
    locked: true;
    yourself.
  ^ project
```


In [tODE v0.0.2][1], there was a fairly simplistic model for defining shared object structure. `$GS_HOME/tode/home` was *mounted* into the the tODE directory node structure as `/home` using the `mount` command:

```
mount --todeRoot home /      # use `man mount` for more information
```

```
+-home\
+-projects\
+-sys\
   +-default\
   +-local\
   +-stone@\
      +-dirs@\
      +-home\
      +-homeComposition@
      +-packages@\
      +-projectComposition@
      +-projects\
      +-repos@\
   +-stones\
     +-stones\
     +-templates\
```

```
    updateClient             # update client-side tODE
    project load Tode        # update server-side tODE
    script --script=setUpSys # build tODE /sys structure
```

[1]: https://github.com/dalehenrich/tode/releases/tag/v0.0.2
[2]: https://github.com/dalehenrich/metacello-work/blob/master/docs/LockCommandReference.md#lock-command-reference
[3]: https://github.com/dalehenrich/metacello-work/blob/master/docs/MetacelloScriptingAPI.md#loading
[4]: images/projectList.png
