$filenames = ['file1', 'file2', 'file3', 'file4', 'file5']

# function call with lambda:
$filenames.each |String $file| {
  file {"/tmp/${file}":
    ensure => present,
  }
}
