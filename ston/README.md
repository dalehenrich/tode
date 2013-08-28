# Scripts

To boot strap the scripts :

```
ston import /home/bin /opt/git/tode/bin.ston
ston import /home /opt/git/tode/home.ston
```

## /home/bin scripts

### *commit* baseline 

Commit the given baseline using the given commitMessage.

```
  /home/bin/commit Tode `commit message`
  /home/bin/commit Tode @commitMessage
```

### *commit* configuration

Commit the given configuration using the given commitMessage.

```
/home/bin/commitConfig Seaside30 `commit message`
/home/bin/commitConfig Seaside30 @commitMessage
```

### create

Create a project directory.

```
/home/bin/create tode Tode filetree:///opt/git/tode/repository [baseline|config]
```

### export

export home and bin directories:
```
/home/export
```

### import

import home and bin directories:

```
/home/import
```

### *load* baseline

Load the baseline of the given project.

```
/home/bin/load Tode `GemStone Dev`
```

### *load* configuration

Load the given version of the configuration.

```
/home/bin/loadConfig Seaside 3.0.7.1 default
```

### mapRepos

Ensure that all packages in project have the given repo in repository group.

```
/home/bin/mapRepos Tode filetree:///opt/git/tode/repository
/home/bin/mapRepos Tode @repos
```
