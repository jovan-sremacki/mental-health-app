# frozen_string_literal: true

RSpec.describe MentalHealthApp::Actions::Users::Index do
  let(:params) { Hash[] }

  it 'works' do
    response = subject.call(params)
    expect(response).to be_successful
  end
end
