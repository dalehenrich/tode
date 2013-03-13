# Scripts

The scripts in the `bin` directory should be installed into `/home/bin` by
executing the following at the topez shell prompt:

```
  ston import /home/bin/ /opt/git/topez/tode/bin/import.ston
```

Once the `/home/bin/import` script has been installed, you can use it to
install the rest of the `/home/bin` scripts:

```
  /home/bin/import /home/bin /opt/git/topez/tode/bin/
```


## /home/bin scripts

### diff <baseline-name>

Edit the diffs for the given **<baseline-name>**.

### export <topez-directory-path> <server-directory-path>

Export the script objects in the given **<topez-directory-path>** and
store them in STON format in the given **<server-directory-path>**.

### import <topez-directory-path> <server-directory-path>

Export the script objects stored in the given **<server-directory-path>** and reify 
them in the given **<topez-directory-path>**.

### load <baseline-name>
### reload <baseline-name>

