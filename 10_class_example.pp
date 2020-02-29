class newconfig {
    file {
        "/usr/local/test/newconfig.txt": 
      ensure=> "present", 
      content=> "Here is the new config file\n",
    }
}
include newconfig
