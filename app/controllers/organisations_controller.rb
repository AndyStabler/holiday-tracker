class OrganisationsController < ApplicationController

  def new
    @organisation = Organisation.new()
    @user = @organisation.users.build
  end

  def create
    @organisation = Organisation.new(organisation_params)
    @user = @organisation.users.build(user_params.merge(admin: true))

    if @organisation.save
      login_user(@user)
      redirect_to @organisation
    else
      render :new
    end
  end

  def show
  end

  private

  def organisation_params
    params.require(:organisation).permit(:name)
  end

  def user_params
    params.require(:organisation).permit(user: [:name, :email_address, :password, :password_confirmation])[:user]
  end
end
