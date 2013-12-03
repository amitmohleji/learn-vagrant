Exec { path => [ "/bin/", "/sbin/" , "/usr/bin/", "/usr/sbin/" ],  logoutput => "true"}
exec {"ls":}

notify{"Successfully exectued command":
message => "Operating system is ${operatingsystem} and ipaddress is ${ipaddress}",
}

file{"motd":
ensure => file,
path =>"/etc/motd",
content => "Hi, Welcome to my own VM. this is amit",
}

package{"apache2":
ensure => installed,
}
service {"apache2":
ensure => running,
enable => true,
}

#class{ 'mod1': }

mod1::mod{"using it":}
