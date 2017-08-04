module Health
  class API < Grape::API
    namespace :health do
      get do
        { }
      end
    end
  end
end