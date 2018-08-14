$var1="hello"

if $var1=="hello" { 
   file { '/tmp/hello': ensure => present } 
} else { 
   file { '/tmp/bye': ensure => present } 
} 