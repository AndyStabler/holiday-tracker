class OrganisationsController < ApplicationController
  def new
    @organisation = Organisation.new()
    @user = @organisation.users.build
  end

  def create
    Organisation.create(organisation_params)
    # TODO: Set the admin flag
  end

  private

  def organisation_params
    params.require(:organisation).permit(
      :name, users_attributes: [
        :name, :email_address, :password, :password_confirmation
      ]
    )
  end
end
