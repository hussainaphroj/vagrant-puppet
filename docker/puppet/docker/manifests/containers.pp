define docker::containers (
  $image_name,
  $host_port,
  $container_port,
  $container_name,
)
{
  exec {"running_$container_name":
     command => "docker run -dit --name $container_name -p $host_port:$container_port $image_name",
      unless => "docker ps | grep -i $container_name",
     path    => ["/bin"],
  }
}
