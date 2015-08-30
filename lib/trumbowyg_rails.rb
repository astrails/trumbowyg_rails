module TrumbowygRails
  class Engine < Rails::Engine
    initializer "trumbowyg.assets.precompile" do |app|
      app.config.assets.paths << Rails.root.join("vendor", "assets", "images", "trumbowyg")
      app.config.assets.precompile += %w(*.png trumbowyg/**/*.js trumbowyg/**/*.scss)
    end
  end
end
