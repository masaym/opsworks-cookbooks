node[:deploy].each do |app_name, deploy_config|

  file File.join(deploy_config[:deploy_to], 'shared', 'config', 'app_data.yml') do
    Chef::Log.info("here!!:#{deploy_config[:environment]}")
    content YAML.dump(deploy_config[:environment].to_hash)
  end

end
