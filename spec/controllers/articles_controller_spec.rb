require 'rails_helper'

describe ArticlesController, type: :controller do
  describe 'GET show' do
    let(:slug) { 'an-article' }

    before do
      expect(Article).to receive(:find_by).with(slug: slug) { double(:article) }
      get :show, params: { id: slug }
    end

    it_behaves_like 'a standard get request'
  end
end
