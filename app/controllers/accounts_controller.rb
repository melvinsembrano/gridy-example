class AccountsController < ApplicationController
  include Gridy::Controller::Actions

  private
    # Only allow a list of trusted parameters through.
    # def account_params
    #   params.require(:account).permit(:email, :first_name, :last_name, :birthday, :company, :position)
    # end
end
