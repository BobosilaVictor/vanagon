platform "fedora-30-x86_64" do |plat|
  plat.servicedir "/usr/lib/systemd/system"
  plat.defaultdir "/etc/sysconfig"
  plat.servicetype "systemd"
  plat.dist "fc30"

  packages = %w(autoconf automake createrepo rsync gcc gcc-c++ make rpmdevtools rpm-libs cmake rpm-sign yum-utils)
  plat.provision_with "/usr/bin/dnf install -y --best --allowerasing #{packages.join(' ')}"
  plat.install_build_dependencies_with "/usr/bin/dnf install -y --best --allowerasing"
  plat.vmpooler_template "fedora-30-x86_64"
end
