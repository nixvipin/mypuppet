cron { cron-example:
command => "echo hi today is $(date '+\%F Time: \%H:\%M') >> /usr/local/test/output.log",
#command => "echo hi >> /tmp/test.txt",
user => root,
hour => "*",
minute => "*"
}

