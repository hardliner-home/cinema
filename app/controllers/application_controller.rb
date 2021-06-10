class ApplicationController < ActionController::API
  respond_to :json
  include Pundit

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  protected

  def respond_with_save(record, serializer: ApplicationSerializer, options: {})
    if record.save
      render json: serializer.new(record, options)
    else
      render json: { error: record.errors }, status: 422
    end
  end

  private

  def user_not_authorized
    render json: { error: "You are not authorized to perform this action." }, status: 401
  end

end
