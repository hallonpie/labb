system("
if [ #{ARGV[0]} = 'up' ]; then
    echo 'Creating ssh keys'
    ./key_handle.sh add
elif [ #{ARGV[0]} = 'destroy' ]; then
echo 'Removing ssh keys for deploy'
./key_handle.sh del
fi
")

Vagrant.configure("2") do |config|
  boxes = [
    {
      :name => "webb",
      :box => "centos/7",
      :ram => 1024,
      :vcpu => 1,
      :ip => "10.10.0.10"
    },
    {
      :name => "databas",
      :box => "centos/7",
      :ram => 1024,
      :vcpu => 1,
      :ip => "10.10.0.11"
    },
    {
      :name => "monitoring",
      :box => "centos/7",
      :ram => 1024,
      :vcpu => 1,
      :ip => "10.10.0.12"
    }
  ]
  boxes.each do |opts|
    config.vm.define opts[:name] do |config|
      config.vm.box = opts[:box]
      config.vm.synced_folder ".", "/vagrant", type: "rsync"
      config.vm.hostname = opts[:name]
      config.vm.provider :virtualbox do |v|
        v.memory = opts[:ram]
        v.cpus = opts[:vcpu]
      end
      config.vm.network :private_network, ip: opts[:ip]
      config.vm.provision :shell, path: "bootstrap.sh"
    end
  end
end
