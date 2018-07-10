define docker::images (
  $image_name,
)
{
  exec {"pulling_$image_name":
     command => "docker pull $image_name",
      unless => "docker images | grep -i $image_name",
     path    => ["/bin"],
  }
}
