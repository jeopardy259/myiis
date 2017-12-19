powershell_script 'Install IIS' do
  code 'Add-WindowsFeature Web-Server'
end

template 'C:\inetpub\wwwroot\Default.htm' do
   source 'Default.htm.erb'
end

service 'w3svc' do
  action [:start, :enable]
end
