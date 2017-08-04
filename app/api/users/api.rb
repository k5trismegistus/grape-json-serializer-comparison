module Users
  class API < Grape::API
    resources :users do
      helpers do
        def user
          User.includes(:articles).find(params[:user_id])
        end

        def bookmarked_article_ids(user_id)
          Bookmark.where(user_id: user_id).pluck(:article_id)
        end
      end

      route_param :user_id do
        namespace :jbuilder do

          formatter :json, Grape::Formatter::Jbuilder
          get jbuilder: 'user.json' do
            @user = user
            @bookmarked_ids = bookmarked_article_ids(params[:user_id])
          end
        end

        namespace :rabl do
          formatter :json, Grape::Formatter::Rabl

          get rabl: 'user.rabl' do
            @user = user
            @bookmarked_ids = bookmarked_article_ids(params[:user_id])
          end
        end

        namespace :ams do
          formatter :json, Grape::Formatter::ActiveModelSerializers

          get serializer: UserSerializer do
            render(user, extra: { bookmarked_ids: bookmarked_article_ids(params[:user_id]) } )
          end
        end

        namespace :ge do
          get do
            @user = user
            present @user,
              with: UserEntity,
              bookmarked_ids: bookmarked_article_ids(params[:user_id])
          end
        end
      end
    end
  end
end