node default {
  file {'/root/README':
    ensure  =>  file,
    content =>  'This a readme after changing site.pp',
    owner   =>  'root'
   }
}
