require 'rails_helper'

describe UsersController do
	describe 'GET :index' do
		before {@UsersController = create_list(:user, 2)} # needs to be an instance variable?
		it 'succeeds when json format is required' do
			get :index, format: :json
			expect(response).to be_success
			data = JSON.parse(response.body)
			expect(data.size).to eq 2
			expect(data.first['name']).to eq @users.first.name
		end
	end

	describe 'GET :show' do
		it 'succeeds when an existing cat id is required' do
			cat = create(:user)
			get :show, id: user.id, format: :json
			data = JSON.parse(response.body)	
			expect(data).to have_key('name')
			expect(data['name']).to eq user.name
		end
	end
end