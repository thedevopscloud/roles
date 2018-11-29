Facter.add('role') do
  setcode do
    Facter::Core::Execution.execute('/usr/bin/cat /opt/puppetlabs/puppet/cache/state/classes.txt | grep -i roles | awk -F:: '{print $2"::"$3}'')
  end
end
