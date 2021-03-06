namespace :redis do

    desc "Flushes all Redis data"
    task :flushall, :roles => [:app] do
      run "redis-cli flushall"
    end

    desc "Restart Redis"
    task :restart, :roles => [:app], :max_hosts => 1 do
      sudo "/etc/init.d/redis-server stop; sudo /etc/init.d/redis-server start"
    end

end
