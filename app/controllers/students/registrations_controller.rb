# frozen_string_literal: true

class Students::RegistrationsController < Devise::RegistrationsController
  before_action :configure_sign_up_params, only: [:create]
  before_action :configure_account_update_params, only: [:update]

  # GET /resource/sign_up
  def new
    super
  end

  # POST /resource
  def create
    super
  end

  # GET /resource/edit
  def edit
    super
  end

  # PUT /resource
  def update
    super do |resource|
      if resource.errors.empty?
        redirect_to scholars_index_path # Redirect to scholar index path after successful update
        return
      end
    end
  end

  # DELETE /resource
  def destroy
    super do |resource|
      if resource.errors.empty?
        redirect_to scholars_index_path # Redirect to scholar index path after successful update
        return
      end
    end
  end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.

  def cancel
    super
  end
  protected
  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:full_name, :parent_name,   :contact_number, :email, :password, :password_confirmation])
  end
  def configure_account_update_params
    devise_parameter_sanitizer.permit(:account_update, keys: [:full_name, :parent_name,  :contact_number, :email, :password, :password_confirmation, :current_password])
  end
  def after_sign_up_path_for(resource)
    super(resource)
  end
  def after_inactive_sign_up_path_for(resource)
    super(resource)
  end


  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_up_params
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:attribute])
  # end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
  # end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end
end
