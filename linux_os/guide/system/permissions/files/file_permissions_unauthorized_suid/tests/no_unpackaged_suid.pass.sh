#!/bin/bash

for x in $(find / -perm /u=s) ; do
	if ! rpm -qf $x ; then
		rm -rf $x
	fi
done
