require "rails_helper"
require "spec_helper"

describe Spree::Manage::ShippingGroupsController, type: :controller do
  let(:user) { create(:vendor_user) }
  let(:shipping_group) { create(:shipping_group, vendor: user.company) }

  before do
    sign_in user
  end

  context 'user has NONE permission' do
    before do
      user.permission_settings_shipping_groups = 0
      user.save
    end

    it 'cannot view delivery schedule index page' do
      get :index
      expect(response.status).to eq(302)
      expect(response).to redirect_to manage_path
      expect(flash[:error]).to eq("You do not have permission to view delivery schedules")
    end

    it 'cannot view delivery schedule new page' do
      get :new
      expect(response.status).to eq(302)
      expect(response).to redirect_to manage_path
      expect(flash[:error]).to eq('You do not have permission to view delivery schedules')
    end

    it 'cannot create new shipping_group' do
      post :create, shipping_group: FactoryGirl.attributes_for(:shipping_group)
      expect(response.status).to eq(302)
      expect(response).to redirect_to manage_path
      expect(flash[:error]).to eq('You do not have permission to view delivery schedules')
    end

    it 'cannot view delivery schedule edit page' do
      get :edit, id: shipping_group.id
      expect(response.status).to eq(302)
      expect(response).to redirect_to manage_path
      expect(flash[:error]).to eq('You do not have permission to view delivery schedules')
    end

    it 'cannot update an existing delivery schedule' do
      patch :update, id: shipping_group.id, shipping_group: FactoryGirl.attributes_for(:shipping_group)
      expect(response.status).to eq(302)
      expect(response).to redirect_to manage_path
      expect(flash[:error]).to eq('You do not have permission to view delivery schedules')
    end

    it 'cannot destroy an existing delivery schedule' do
      delete :destroy, id: shipping_group.id
      expect(response.status).to eq(302)
      expect(response).to redirect_to manage_path
      expect(flash[:error]).to eq('You do not have permission to view delivery schedules')
    end

  end

  context 'user has READ permission' do
    before do
      user.permission_settings_shipping_groups = 1
      user.save
    end
    it 'can view delivery schedule index page' do
      get :index
      expect(response.status).to eq(200)
      expect(flash[:error]).to eq(nil)
    end

    it 'cannot view delivery schedule new page' do
      get :new
      expect(response.status).to eq(302)
      expect(response).to redirect_to manage_shipping_groups_path
      expect(flash[:error]).to eq('You do not have permission to edit delivery schedules')
    end

    it 'cannot create new delivery schedule' do
      post :create, shipping_group: FactoryGirl.attributes_for(:shipping_group)
      expect(response.status).to eq(302)
      expect(response).to redirect_to manage_shipping_groups_path
      expect(flash[:error]).to eq('You do not have permission to edit delivery schedules')
    end

    it 'cannot view delivery schedule edit page' do
      get :edit, id: shipping_group.id
      expect(response.status).to eq(302)
      expect(response).to redirect_to manage_shipping_groups_path
      expect(flash[:error]).to eq('You do not have permission to edit delivery schedules')
    end

    it 'cannot update an existing delivery schedule' do
      patch :update, id: shipping_group.id, shipping_group: FactoryGirl.attributes_for(:shipping_group)
      expect(response.status).to eq(302)
      expect(response).to redirect_to manage_shipping_groups_path
      expect(flash[:error]).to eq('You do not have permission to edit delivery schedules')
    end

    it 'cannot destroy an existing delivery schedule' do
      delete :destroy, id: shipping_group.id
      expect(response.status).to eq(302)
      expect(response).to redirect_to manage_shipping_groups_path
      expect(flash[:error]).to eq('You do not have permission to edit delivery schedules')
    end
  end

  context 'user has WRITE permission' do
    before do
      user.permission_settings_shipping_groups = 2
      user.save
    end

    it 'can view delivery schedule index page' do
      get :index
      expect(response.status).to eq(200)
      expect(flash[:error]).to eq(nil)
    end

    it 'can view delivery schedule new page' do
      get :new
      expect(response.status).to eq(200)
      expect(flash[:error]).to eq(nil)
    end

    it 'can create new delivery schedule' do
      post :create, shipping_group: FactoryGirl.attributes_for(:shipping_group)
      expect(response.status).to eq(302)
      expect(response).to redirect_to manage_shipping_groups_path
      expect(flash[:error]).to eq(nil)
      expect(flash[:errors]).to eq(nil)
    end

    it 'can view delivery schedule edit page' do
      get :edit, id: shipping_group.id
      expect(response.status).to eq(200)
      expect(flash[:error]).to eq(nil)
    end

    it 'can update an existing delivery schedule' do
      patch :update, id: shipping_group.id, shipping_group: FactoryGirl.attributes_for(:shipping_group)
      expect(response.status).to eq(302)
      expect(response).to redirect_to manage_shipping_groups_path
      expect(flash[:error]).to eq(nil)
      expect(flash[:errors]).to eq(nil)
    end

    it 'can destroy an existing delivery schedule' do
      delete :destroy, id: shipping_group.id
      expect(response.status).to eq(302)
      expect(response).to redirect_to manage_shipping_groups_path
      expect(flash[:error]).to eq(nil)
      expect(flash[:errors]).to eq(nil)
      expect(flash[:success]).to eq("Delivery Schedule #{shipping_group.try(:name)} deleted")
    end

  end

end
