Rswag::Api.configure do |config|
  # Ensure you're using the correct method for specifying the root directory for OpenAPI files
  config.openapi_root = Rails.root.join('swagger')

  # If you need to specify specific files, you may need to adjust how you're specifying them.
  # You may use the correct method here or review Rswag documentation for proper configuration.
end
