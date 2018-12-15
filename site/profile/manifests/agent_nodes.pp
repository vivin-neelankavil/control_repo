class profile::agent_nodes {
  include dockeragent
  dockeragent::node {'web.puppet.vm':}
  dockeragent::node {'db.puppet.vm':}
  hosts {'web.puppet.vm':
    ensure  =>  present
    ip      =>  "172.18.0.2"
  }
  hosts {'web.puppet.vm':
    ensure  =>  present
    ip      =>  "172.18.0.3"
  }
}
