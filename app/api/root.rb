class Root < Grape::API
  format :json
  mount ::Health::API
end
