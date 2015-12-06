project
projectentryManPage
  "self install"

  | manPage |
  manPage := TDManPage
    commandName: 'entry'
    sourceMethod: self name asString , '>>projectentry'
    fromString:
      'NAME
  project entry - Create a new project entry

SYNOPSIS
  project entry --baseline=<project-name> --repo=<project-repo> [--loads=<load-expression>] \ 
                <project-path>
          entry --config=<project-name> [--version=<project-version>] \
                --repo=<project-repo> [--loads=<load-expression>] <project-path>
          entry --git=<project-name> [--repo=<git-repo-path>] <project-path>
          entry --url=<url-for-project-entry.ston> <project-path>

DESCRIPTION
  The project entry specifies project options used by the `project list` window.

  A project entry can be created for loaded projects or for projects that have
  yet to be loaded. 

  There are three basic types of project entry: Git, Metacello, and HTTP. 

  Git Project Entries
  -------------------
  For Git project entries you define the name of the project and the location on 
  disk where the git repository is located. For example:

    project entry --git=projectHome --repo=$GS_HOME /sys/local/server/projects

  Metacello Project Entries
  -------------------------
  For Metacello project entries you define the name of the project, the type of
  the project (baseline or configuration), the repository where the baseline or
  configuration may be found, and (optionally) the package/project/groups to be loaded.
  For configurations, you also specify the version of the project to be loaded. For example:

    project entry --config=External                          \
                  --version=1.0.0                            \
                  --repo=http://ss3.gemstone.com/ss/external \
                  --loads=`#(''Core'')`                      \
                  /sys/local/server/projects

    project entry --baseline=External                                    \
                  --repo=github://dalehenrich/external:master/repository \
                  /sys/local/server/projects

  If you don''t specify a `--loads` option, the ''default'' group is loaded. Once you have 
  created a project entry, you may change or add attributes. For example, you may want to 
  change the status to #inactive.

  HTTP Project Entries
  --------------------
  For HTTP project entries, you an download an existing project entry from a web-site. For
  example:

    project entry --url=http://gsdevkit.github.io/GsDevKit_home/Seaside31.ston \
                  /sys/stone/projects

  Downloads a project entry from http://gsdevkit.github.io/GsDevKit_home/Seaside31.ston
  into the /sys/stone/projects node.

  Once a project is loaded, only changes to the loads specification, locked
  attribute and active attribute may have an effect. The remaining information
  is taken directly from the loaded project itself.

  Any changes you make will take effect after the project list is refreshed.

  If there is already a project with the same project name in your project list, the download
  will be skipped.

Project Entry Attributes

  status
    When a project entry is initially created, the status is set to #active. Active
    projects are listed in bold and sorted near the top of the project list.

  gitRootPath
    For projects use github repositories, the gitRootPath specifies a location on 
    disk where the git repository should be located. This attribute is used by the
    `project clone` command. If a project entry does not have the gitRootPath
    explicitly set, then the path returned by 
    TDProjectEntryDefinition class>>defaultGitRootPath is used. The value of
    TDProjectEntryDefinition class>>defaultGitRootPath can be set on a session
    by session basis.

  locked
    For Metacello projects, you may  specify that the project entry is locked. By
    locking a project entry you can ensure that the specified project version (if 
    applicable) and repository will be used whenever the project is loaded by
    reference from another project.

OPTIONS

EXAMPLES
  project entry --config=External --version=1.0.0 --repo=http://ss3.gemstone.com/ss/external \
               --loads=`#(''Core'')` /sys/local/server/projects

  project entry --baseline=External --repo=github://dalehenrich/external:master/repository \
               --loads=`#(''Core'')` /sys/stone/projects

  project entry --git=projectHome --repo=$GS_HOME /sys/stone/projects

  project entry --url=http://gsdevkit.github.io/GsDevKit_home/Seaside31.ston \
                /sys/stone/projects

SEE ALSO
  browse class --exact --hier TDProjectEntryDefinition
  "The Metacello Lock Command Reference" [1]

[1] https://github.com/dalehenrich/metacello-work/blob/master/docs/LockCommandReference.md#lock-command-reference
'.
  ^ manPage