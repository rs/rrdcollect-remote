dnl
dnl ########################################################################
dnl #          This file is meant to be processed with m4                  #
dnl ########################################################################
dnl
define(`genhostlist', `ifelse($#, 0, , $#, 1, `host = $1', `host = $1
genhostlist(shift($@))')')

logconf         = /etc/vds/log.conf

rsh             = /usr/bin/ssh
rsh-args        = -i /etc/rrdcollect-remote/rrdcollect-remote_sshkey

dnl # The genhostlist can be used to generate host directives from a list of hosts...
genhostlist(host1, host2, user@host3)

dnl # ... thus it can invoke an external command to generate an host list from a
dnl # database for instance.
genhostlist(esyscmd(get_hostlist.sh args))

rrdfiles-path   = /var/lib/rrdcollect-remote/%h/%f
