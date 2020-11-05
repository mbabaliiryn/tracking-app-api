require 'rails_helper'

RSpec.describe 'Activities', type: :request do
  def confirm_and_login_user(user)
    post '/login', params: { username: user.username, password: 'password' }
    token = JSON.parse(response.body)['token']
  end

  let!(:artivity_params) do
    activity_params = {
      title: 'sample Title',
      total: 12
    }
  end
end
