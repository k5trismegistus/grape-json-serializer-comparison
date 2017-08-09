require 'test_helper'
require 'benchmark'

class UsersAPITest < ActionDispatch::IntegrationTest

  REQUEST_TRIAL = 1000

  REQUEST_IDS = (1..REQUEST_TRIAL).map do
    rand(1..100)
  end

  test 'jbuilder' do
    get "/api/users/1/jbuilder"

    result = Benchmark.realtime do
      REQUEST_IDS.each do |id|
        get "/api/users/#{id}/jbuilder"
      end
    end

    puts "jbuilder: #{result}"
  end

  test 'rabl' do
    get "/api/users/1/jbuilder"

    result = Benchmark.realtime do
      REQUEST_IDS.each do |id|
        get "/api/users/#{id}/jbuilder"
      end
    end

    puts "rabl: #{result}"
  end

  test 'ams' do
    get "/api/users/1/jbuilder"

    result = Benchmark.realtime do
      REQUEST_IDS.each do |id|
        get "/api/users/#{id}/ams"
      end
    end

    puts "ams: #{result}"
  end

  test 'ge' do
    get "/api/users/1/jbuilder"

    result = Benchmark.realtime do
      REQUEST_IDS.each do |id|
        get "/api/users/#{id}/ge"
      end
    end

    puts "ge: #{result}"
  end
end