# Performance comparison of JSON serializers with grape

## Descritption
Performance comparison of Jbuilder, Rabl, ActiveModel::Serializer and Grape::Entity.

## How to test

```
$ bundle install
$ RAILS_ENV=test bundle exec rake db:setup
$ bundle exec rake test
```

## In my environment

```
Jbuilder: 96.57238899999356
Rabl: 102.2337039999984
ActiveModel::Serializer: 97.1561309999961
Grape::Entity: 77.5971559999889
```

Grape::Entity is fastest