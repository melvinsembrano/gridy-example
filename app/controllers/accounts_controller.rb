class AccountsController < ApplicationController
  include Gridy::Controller::Actions

  def resource_attributes
    %i[email first_name last_name birthday company position]
  end
end
