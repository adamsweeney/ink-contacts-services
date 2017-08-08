class ApplicationResponder < ActionController::Responder
  include Responders::FlashResponder

  def display(resource, options = {})
    options.delete :location
    super(resource, options)
  end

  # override for the default JSON failure hash.
  def json_resource_errors
    { message: resource.errors.full_messages.first }
  end

  protected

  def api_behavior
    raise MissingRenderer.new(format) unless has_renderer?
    if get?
      display resource
    elsif post?
      display resource, :status => :created, :location => api_location
    else
      display resource, :status => :ok
    end
  end
end
