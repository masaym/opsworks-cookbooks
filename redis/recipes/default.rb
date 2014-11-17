yum_package "redis" do
  action :install
end

execute "redis" do
  user "root"
  command <<-EOF
    /etc/init.d/redis restart
  EOF
  action :run
end

