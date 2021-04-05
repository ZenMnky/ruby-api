require 'rails_helper'

RSpec.describe Article, type: :model do
  # hash prefix used to denote testing instances
  # dot prefix used to denote testing class
  describe '#validations' do
    let(:article) { build(:article) }  
    
    it 'tests that factory is valid' do
        # article = Article.create({title: 'Sample article', content: 'Sample content' })
        article = build(:article)
        expect(article).to be_valid # article-valid? == true
      end

      it 'has an invalid title' do
        article.title = ''
        expect(article).not_to be_valid
        expect(article.errors[:title]).to include("can't be blank")
      end
  end

  
end
