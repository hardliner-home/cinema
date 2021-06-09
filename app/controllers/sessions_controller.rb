class SessionsController < Devise::SessionsController

  def respond_to_on_destroy
    head :no_content
  end

end
