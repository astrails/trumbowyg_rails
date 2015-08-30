module TrumbowygRails
  class Engine < Rails::Engine
    initializer "trumbowyg.assets.precompile" do |app|
      app.config.assets.paths << Rails.root.join("vendor", "assets", "images", "trumbowyg")
      app.config.assets.paths << Rails.root.join("vendor", "assets", "javascripts", "trumbowyg")
      app.config.assets.paths << Rails.root.join("vendor", "assets", "stylesheets", "trumbowyg")
      app.config.assets.precompile += %w(*.png *.js )
      app.config.assets.precompile << /.+\.css$/
    end
  end
end
