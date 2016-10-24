require 'rails_helper'

RSpec.describe Admin::ArticlesController, type: :controller do
  login_user

  describe 'GET index' do
    before { get :index }

    it_behaves_like 'a standard get request'
  end

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

  describe 'POST create' do
    let(:category)           { Category.create!(name: 'philosophy')           }
    let(:article_attributes) { { title: 'A Title', category_id: category.id } }

    before { post :create, params: { article: article_attributes } }

    it 'should create an article with the expected attributes' do
      expect(Article.first.title).to eq 'A Title'
    end

    it 'should redirect to index' do
      expect(response.status).to be 302
    end
  end

  describe 'PUT update' do
    let(:category)           { Category.create!(name: 'philosophy')           }
    let(:article_attributes) { { title: 'A Title', category_id: category.id } }

    before do
      @article = Article.create!(title: 'Old Title', category_id: category.id)
      put :update, params: { article: article_attributes, id: @article.id }
    end

    it 'should update the article with the expected attributes' do
      expect(Article.find(@article.id).title).to eq 'A Title'
    end

    it 'should redirect to index' do
      expect(response.status).to be 302
    end
  end
end
