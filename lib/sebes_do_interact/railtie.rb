module SebesDoInteract
  class Railtie < Rails::Railtie
    initializer "my_railtie.configure_rails_initialization" do
        p "Please install"
    end
  end
end
