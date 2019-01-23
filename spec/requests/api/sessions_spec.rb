require 'rails_helper'

RSpec.describe 'Sessions', type: :request do
  let(:user) { FactoryBot.create(:user) }
  let(:headers) { { HTTP_ACCEPT: 'application/json' } }

  describe 'POST /api/auth/sign_in' do
    it 'valid credentials returns user' do
      post '/api/auth/sign_in', params: {email: user.email,
                                          password: user.password
                                      }, headers: headers
      expected_response = {'data' => {'id' => user.id,
                                      'name' => user.name,
                                      'role' => user.role,
                                      'uid' => user.email,
                                      'email' => user.email,
                                      'provider' => 'email'}    
                                      }

      expect(response_json).to eq expected_response
    end

    it 'invalid password returns error message' do
      post '/api/auth/sign_in', params: {email: user.email, 
                                          password: 'wrong_password'
                                      }, headers: headers

      expect(response_json['errors']).to eq ['Invalid login credentials. Please try again.']
      expect(response.status).to eq 401
    end

    it 'invalid email returns error message' do
      post '/api/auth/sign_in', params: {email: 'wrong@email.com',
                                          password: user.password
                                      }, headers: headers

      expect(response_json['errors']).to eq ['Invalid login credentials. Please try again.']
      expect(response.status).to eq 401
    end
  end
end