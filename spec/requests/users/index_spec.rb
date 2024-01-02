# frozen_string_literal: true

RSpec.describe 'GET /users', type: :request do
  let(:users) { app['persistence.rom'].relations[:users] }

  before do
    users.insert(name: 'Jovan', email: 'jovan@test.com', password: 'pa$$w0rD!')
    users.insert(name: 'Marko', email: 'marko@test.com', password: 'pa$$w0rD!')
  end

  it 'returns a list of users' do
    get '/users/show'

    expect(last_response).to be_successful
    expect(last_response.content_type).to eq('application/json; charset=utf-8')

    response_body = JSON.parse(last_response.body)

    expect(response_body).to eq([
      { 'name' => 'Jovan' },
      { 'name' => 'Marko' }
    ])
  end
end
