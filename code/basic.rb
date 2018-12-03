package 'git' 
package 'gcc'
package 'make'
package 'sqlite3' do 
  case node[:platform]
  when 'redhat', 'centos', 'fedora'
    package_name 'sqlite-devel'
  when 'ubuntu', 'debian'
    package_name 'libsqlite3-dev'
  end
end
