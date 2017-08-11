#   Class: profile::kubernetes::params default variables
#
#   This class define default parameters used by all Kubernetes classes,definitions
#
#   Parameters:
#     $users:
#       System user who own Kubernetes project
#     $home:
#       Home directory for Kubernetes project
#     $bin:
#       Directory that contains Binary/Tools/scripts for Kubernetes project
#     $config:
#       Directory that contains Kubernetes configuration files
#     $resources:
#       Directory that contains Kubernetes resources that will be deploy on Kubernetes
#       clusters
#     $backup:
#       Directory that contains Kubernetes resources exported from clusters.
#       Ex: Secrets generated by kube-lego that contain letsencrypt certificate
#     $trash:
#       Directory that contains Kubernetes resources that need to be removed from Kubernetes
#       clusters.
#     $clusters:
#       clusters contains a list of cluster information.
#       This variable must respect following format:
#
#       example:
#           $clusters:
#             - server: https://clusterexample1.eastus.cloudapp.azure.com
#               username: clusterexample1-admin
#               clustername: clusterexample1
#               certificate_authority_data: UNG4xdlNhZlBlZnNjWXZY
#               client_certificate_data: UNG4xdlNhZlBlZnNjWXZY
#               client_key_data: UNG4xdlNhZlBlZnNjWXZY
#             - server: https://clusterexample2.eastus.cloudapp.azure.com
#               username: clusterexample2-admin
#               clustername: clusterexample2
#               certificate_authority_data: UNG4xdlNhZlBlZnNjWXZY
#               client_certificate_data: UNG4xdlNhZlBlZnNjWXZY
#               client_key_data: UNG4xdlNhZlBlZnNjWXZY
#
class profile::kubernetes::params (
  $user = 'k8s',
  $home = "/home/${user}",
  $bin = "${home}/.bin",
  $resources = "${home}/resources",
  $backup = "${home}/backup",
  $config = "${home}/.kube",
  $trash = "${home}/trash",
  $clusters = []
  ){
}
