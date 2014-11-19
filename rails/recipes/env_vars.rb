node[:deploy].each do |app_name, deploy_config|

  deploy_config[:env].each do |k,v|
    env k do
      value v
    end
  end

end

