# Class: vtun::params
#
# This class defines default parameters used by the main module class vtun
# Operating Systems differences in names and paths are addressed here
#
# == Variables
#
# Refer to vtun class for the variables defined here.
#
# == Usage
#
# This class is not intended to be used directly.
# It may be imported or inherited by other classes
#
class vtun::params {

  ### vtun related parameters
  $mode = 'client'
  $server = ''

  ### Application related parameters

  $package = $::operatingsystem ? {
    default => 'vtun',
  }

  $service = $::operatingsystem ? {
    default => 'vtun',
  }

  $service_status = $::operatingsystem ? {
    default => true,
  }

  $process = $::operatingsystem ? {
    default => 'vtund',
  }

  $process_args = $::operatingsystem ? {
    default => '',
  }

  $process_user = $::operatingsystem ? {
    default => 'vtun',
  }

  $config_file = $::operatingsystem ? {
    default => '/etc/vtund.conf',
  }

  $config_file_mode = $::operatingsystem ? {
    default => '0400',
  }

  $config_file_owner = $::operatingsystem ? {
    default => 'root',
  }

  $config_file_group = $::operatingsystem ? {
    default => 'root',
  }

  $config_file_init = $::operatingsystem ? {
    /(?i:Debian|Ubuntu|Mint)/ => '/etc/default/vtun',
    default                   => '/etc/sysconfig/vtun',
  }

  $pid_file = $::operatingsystem ? {
    default => '/var/run/vtun.pid',
  }

  $data_dir = $::operatingsystem ? {
    default => '/etc/vtun',
  }

  $log_dir = $::operatingsystem ? {
    default => '/var/log',
  }

  $log_file = $::operatingsystem ? {
    default => '/var/log/syslog',
  }

  $port = '5000'
  $protocol = 'tcp'

  # General Settings
  $my_class = ''
  $source = ''
  $source_dir = ''
  $source_dir_purge = false
  $template = 'vtun/vtun.conf.erb'
  $options = ''
  $service_autorestart = true
  $version = 'present'
  $absent = false
  $disable = false
  $disableboot = false

  ### General module variables that can have a site or per module default
  $monitor = false
  $monitor_tool = ''
  $monitor_target = $::ipaddress
  $firewall = false
  $firewall_tool = ''
  $firewall_src = '0.0.0.0/0'
  $firewall_dst = $::ipaddress
  $puppi = false
  $puppi_helper = 'standard'
  $debug = false
  $audit_only = false

}
