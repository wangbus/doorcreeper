class Users::SessionsController < Devise::SessionsController
  respond_to :html, :json
# before_filter :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  def new
    super
    # session[:return_to] = params[:return_to] if params[:return_to]
  end

  # POST /resource/sign_in
  # def create
  #   self.resource = warden.authenticate!(auth_options)
  #   sign_in(resource_name, resource)
  #
  #   if session[:return_to]
  #     redirect_to session[:return_to]
  #     session[:return_to] = nil
  #   else
  #     redirect_to root_url
  #   end
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.for(:sign_in) << :attribute
  # end
end
