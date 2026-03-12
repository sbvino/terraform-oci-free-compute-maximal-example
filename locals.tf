locals {
  protocol_number = {
    icmp   = 1
    icmpv6 = 58
    tcp    = 6
    udp    = 17
  }

  instance = {
    ubuntu = {
      shape            = "VM.Standard.E2.1.Micro"
      operating_system = "Canonical Ubuntu"
      os_version       = "24.04" # Or "22.04", depending on your preference
      user_data = {
        runcmd = ["apt-get remove --quiet --assume-yes --purge apparmor"]
      }
    }
    ubuntu_arm = {
      shape            = "VM.Standard.A1.Flex"
      operating_system = "Canonical Ubuntu"
      os_version       = "24.04"
      user_data = {
        runcmd = ["apt-get remove --quiet --assume-yes --purge apparmor"]
      }
    }
  }
}
