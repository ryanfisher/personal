require 'rails_helper'

RSpec.describe Admin::ArticlesController, type: :controller do
  describe 'GET new' do
    before { get :new }

    it_behaves_like 'a standard get request'
  end

  describe 'GET edit' do
    before do
      expect(Article).to receive(:find)
      get :edit, params: { id: 1 }
    end

    it_behaves_like 'a standard get request'
  end
end
