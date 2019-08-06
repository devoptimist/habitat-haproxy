pkg_name=haproxy
pkg_origin=devoptimist
pkg_version="2.0.0"
pkg_maintainer="Steve Brown <sbrown@chef.io>"
pkg_license=("Apache-2.0")
pkg_deps=(
  core/haproxy
)
pkg_svc_run='haproxy -f config/haproxy.conf -db'
pkg_svc_user=root
pkg_svc_group=root
pkg_exports=(
  [port]=front-end.port
  [status-port]=status.port
)
pkg_exposes=(port status-port)
pkg_binds_optional=(
  [backend]="port superuser_name"
)

do_build() {
  return 0
}

do_install() {
  return 0
}
