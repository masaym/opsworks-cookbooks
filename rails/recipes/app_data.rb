node[:deploy].each do |app_name, deploy_config|

  file File.join(deploy_config[:deploy_to], 'shared', 'config', 'app_data.yml') do
    content YAML.dump(deploy_config[:environment].to_hash)
  end

  execute "create symbolic link" do
    command <<-EOF
      cd #{File.join(deploy_config[:deploy_to], 'current', 'config')}
      ln -s #{File.join(deploy_config[:deploy_to], 'shared', 'config', 'app_data.yml')} app_data.yml
    EOF
  end 

end
