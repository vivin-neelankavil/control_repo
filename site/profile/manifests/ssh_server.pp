class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC6XmEVXSK27Pq7GJRVyminALvKGp3UAl2nooEpefJy6i32/Ib/rJKhpDeJQP0wFv3lHSWQHLNwRJ5WdxVmF1zA9GxusZEkfhoj0UXRjCdE6YI2H4metrAgDr6+a9flu4jm3uHSBOwalaInA0pnJ6owGm+NvzJvuOQ9lNOUSB3sIrmUO4J32+FzWVTRHZxh8fdMoaNyinDrVmh9LE0ZowCts8vdKa+cCGmR+hElFcuG3azzeea2CDqSlO0bq7TB95u9rP07D2jJv/bdYFlaqJ2kZ4PvMg+aCO2U220hZLhLUFrQe+XPSyR1rzLkbDIvDTS+B5HxE3FNSwx6yqJX/DRJ',
	}  
}
