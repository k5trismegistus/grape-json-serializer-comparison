class Root < Grape::API
  format :json
  mount Health::API
  mount Users::API
end
