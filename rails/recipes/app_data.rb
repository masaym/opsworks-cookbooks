node[:deploy].each do |app_name, deploy_config|

  file File.join(deploy_config[:deploy_to], 'shared', 'config', 'app_data.yml') do
    content YAML.dump(deploy_config[:environment])
  end

end
