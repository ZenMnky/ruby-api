require 'rails_helper'

RSpec.describe ArticlesController do
  describe '#index' do
    it 'returns a success response' do
      get '/articles'

      # built in matcher from RSpec Gem
      expect(response).to have_http_status(:ok)
    end

    it 'returns proper JSON' do
      article = create :article
      get '/articles'
      body = json
      expect(json_data).to eq(
       [
          {
            id: article.id.to_s,
            type: 'articles',
            attributes: {
              title: article.title,
              content: article.content,
              slug: article.slug
            }
          }
        ]
      )
    end
  end
end
