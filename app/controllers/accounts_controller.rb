class AccountsController < ApplicationController
  include Gridy::Controller::Actions
  gridy model: Account,
    attributes: %i[email first_name last_name birthday company position],
    searchable: true

end
