if $Filename { 
   file { '/some/file': ensure => present } 
} else { 
   file { '/some/other/file': ensure => present } 
} 