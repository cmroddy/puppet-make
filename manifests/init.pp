#
# @summary Install the make package
#
# @param package_name the name of the package that should be installed
# @param package_ensure the desired state of the package
class make (
  String[1] $package_name   = 'make',
  String[1] $package_ensure = 'present'
) {
  # "package" will validate $package_ensure for us..

  ensure_packages($package_name, { 'ensure' => $package_ensure })
}
