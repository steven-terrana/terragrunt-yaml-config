# parse user provided configuration file
locals{
  config = yamldecode(file("../configuration.yaml"))
}