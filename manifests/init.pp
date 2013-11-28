class rabbitmq {
  $required = $::operatingsystem ? {
    /(?i-mx:centos|fedora|redhat|scientific)/ => [ 'rabbitmq-server' ],
  }

  package { $required: ensure => latest }

}
