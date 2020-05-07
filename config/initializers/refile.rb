Refile.store = Refile::Backend::FileSystem.new("/home/vagrant/bookers2/tmp/uploads/store".to_s)
Refile.cache = Refile::Backend::FileSystem.new("/home/vagrant/bookers2/tmp/uploads/cache".to_s)


# cd ~/
# mkdir -p bookers2/tmp/uploads/store
# mkdir bookers2/tmp/uploads/cache