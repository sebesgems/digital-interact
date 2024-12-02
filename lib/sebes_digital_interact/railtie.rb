module SebesDigitalInteract
  class Railtie < Rails::Railtie
    rake_tasks do
      desc 'install Digital Ocean interation scripts'
      task :do do |_t, env, command, optional_args|
        system "do #{env} #{command} #{optional_args}"
      end
    end
  end
end
