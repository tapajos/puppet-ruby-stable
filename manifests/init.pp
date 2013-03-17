# Class: ruby_stable
#
# This module installs the last stable version of ruby.
#
# Requires:
#   puppetlabs/apt
# Sample Usage:
#  class { 'ruby_stable': }

class ruby_stable() {
  include apt

  apt::source { "hellobits":
    location   => 'http://apt.hellobits.com',
    release           => "precise",
    repos             => "main",
    key_server => 'http://apt.hellobits.com/hellobits.key',
    include_src       => false
  }
  
  package { "ruby-ni":
      ensure => "installed"
  }
}