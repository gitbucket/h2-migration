# Migrate GitBucket data to the latest version of H2

In GitBucket 3.10, we upgraded H2 to the recent version of H2 1.4.190. However it might cause a compatibility problem for data files. If you got database trouble by upgrading to GitBucket 3.10, you can migrate H2 data files using this tool.

**Note:** This tool migrate from old data files to new data files but GitBucket 3.10 might break old data files in bootstrap. So you must backup data files before upgrading to GitBucket 3.10.

## Usage

```bash
$ git clone https://github.com/gitbucket/h2-migration.git
$ cd h2-migration
$ ./migration.sh
```

You can configure `GITBUCKET_HOME` by modifying head of `migration.sh`.

```bash
export GITBUCKET_HOME=~/.gitbucket
export H2_USER=sa
export H2_PASSWORD=sa
...
```

If you have any question, send it to [the gitter room](https://gitter.im/gitbucket/gitbucket).
