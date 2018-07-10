class docker (
  $images = false,
  $containers = false,
)
{
  yumrepo { 'DockerEngine':
    ensure   => present,
    baseurl  => 'https://yum.dockerproject.org/repo/main/centos/7/',
    enabled  => true,
    descr    => 'Docker Engine repository for RHEL/CentOS 7',
    gpgcheck => true,
    gpgkey   => 'https://yum.dockerproject.org/gpg',
  } ->
  package { 'docker-engine':
    ensure => present,
  } ->
  service { 'docker':
    ensure => running,
    enable => true,
  }
  if $images {
    create_resources('docker::images', $images)
  }
  if $containers {
    create_resources('docker::containers', $containers)
  }
}
