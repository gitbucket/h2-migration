#!/bin/sh

export GITBUCKET_HOME=~/.gitbucket
export H2_USER=sa
export H2_PASSWORD=sa
export H2_SOURCE_VERSION=1.4.180
export H2_TARGET_VERSION=1.4.190

java -cp lib/h2-$H2_SOURCE_VERSION.jar org.h2.tools.Script -url jdbc:h2:$GITBUCKET_HOME/data -user $H2_USER -password $H2_PASSWORD

java -cp lib/h2-$H2_TARGET_VERSION.jar org.h2.tools.RunScript -url jdbc:h2:$GITBUCKET_HOME/data_1.4.190 -user $H2_USER -password $H2_PASSWORD -script backup.sql

mv $GITBUCKET_HOME/data.h2.db $GITBUCKET_HOME/data.h2.db_$H2_SOURCE_VERSION
mv $GITBUCKET_HOME/data.trace.db $GITBUCKET_HOME/data.trace.H2_SOURCE_VERSION

mv $GITBUCKET_HOME/data_$H2_TARGET_VERSION.mv.db $GITBUCKET_HOME/data.mv.db

