require 'rails_helper'

RSpec.describe 'Measurements', type: :request do
  def confirm_and_login_user(user)
    post '/login', params: { username: user.username, password: 'password' }
    token = JSON.parse(response.body)['token']
  end

  let(:activity) { Activity.create!(title: 'test', total: 12) }

  let!(:measurement_params) do
    measurement_params = {
      date: 'December 17, 1995 03:24:00',
      duration: 2.0,
      activity_id: activity.id
    }
  end

end
