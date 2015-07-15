module Mac::Exec
  include Beaker::CommandFactory

  def renew_dhcp(interface = "en0")
    exec(Beaker::Command.new("echo \"add State:/Network/Interface/#{interface}/RefreshConfiguration temporary\" | scutil"))
  end

  def touch(file, abs=true)
    (abs ? '/usr/bin/touch' : 'touch') + " #{file}"
  end

end
