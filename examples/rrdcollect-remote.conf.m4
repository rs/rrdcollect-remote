dnl
dnl ########################################################################
dnl #          This file is meant to be processed with m4                  #
dnl ########################################################################
dnl
define(`hostgroup', `ifelse($#, 1, , $#, 2, `host = [$1]$2', `host = [$1]$2
hostgroup($1, shift(shift($@)))')')dnl
dnl
logconf         = /etc/vds/log.conf

dnl # The hostgroup macros can be used to generate a group of hosts from a list...
hostgroup(groupname, host1, host2, user@host3)dnl

dnl # ... thus it can invoke an external command to generate an host list from a
dnl # database for instance.
hostgroup(groupname2, esyscmd(get_hostlist.sh args))dnl

rrdfiles-path   = /var/lib/rrdcollect-remote/%h/%f
