################################################################################
#
# Class to install Repositories on RPM distros
#
# Author: Wayne Ingram
#
class rpm_repos {
  case $::operatingsystem {
    'RedHat', 'CentOS': {
      yumrepo {
        'nib':
          baseurl => 'http://styx/CentOS/6/local/x86_64',
          enabled => 1,
          name => 'ingram',
          gpgcheck => 0;
      }
    }
  }
}
