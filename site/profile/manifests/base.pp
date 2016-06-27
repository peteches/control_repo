class profile::base {

  #the base profile should include component modules that will be on all nodes

  class { 'hiera':
    hierarchy => [
      'clientcerts/%{clientcert}',
      'environments/%{environment}/%{clientcert}',
      'environments/%{environment}',
      'cloud_providers/%{cloud_provider}',
      'common.yaml',
    ],
  }

}
