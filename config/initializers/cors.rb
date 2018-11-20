# Be sure to restart your server when you modify this file.

# Avoid CORS issues when API is called from the frontend app.
# Handle Cross-Origin Resource Sharing (CORS) in order to accept cross-origin AJAX requests.

# Read more: https://github.com/cyu/rack-cors

Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'http://localhost:3000'
    # once I add heroku, I need to update the above line to ['localhost:3000', 'reading-challenge.herokuapp.com or whaterer it is name']

    resource '*',
      headers: :any, # maybe add this: ‘Access-Control-Allow-Origin’,
      methods: [:get, :post, :put, :patch, :delete, :options, :head]
  end
end


  # Rack-Cors configuration to enable cross-origin resource sharing
  # config.middleware.insert_before 0, Rack::Cors do
  #   allow do
  #     origins 'http://localhost:3000'
  #     resource '*', :headers => :any, :methods => [:get, :post, :options]
  #   end
  # end
