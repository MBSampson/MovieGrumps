# MovieGrumps -- Programming Assignment from TCI

MovieGrumps is a movie review website where users are encouraged to leave grumpy reviews. 

Built using... Ruby on Rails with gems such as Faker, Kaminari, PostgreSQL, Bootstrap, and themoviedb-api.

### Deployment

[MovieGrumps](https://moviegrumps.herokuapp.com/) on Heroku

### Installation

Requirements: PostgreSQL & ruby version 2.5.0

1. Install dependencies
```
bundle install
```
2. Acquire an API key from [The Movie Database](https://www.themoviedb.org/?language=en)
3. Create file: /config/initializers/tmdb.rb
```
Tmdb::Api.key("YOUR_API_KEY_HERE")
```
4. Configure the application to use your PostgreSQL username and password. In the file: /config/database.yml
```
default: &default
  adapter: postgresql
  encoding: unicode
  # For details on connection pooling, see Rails configuration guide
  # http://guides.rubyonrails.org/configuring.html#database-pooling
  pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>
  host: localhost
  username: YOUR_PGSQL_USR_NAME
  password: YOUR_PGSQL_PASSWORD
 ```
5. Setup your database and seeds (in CLI)
```
rails db:create
rails db:migrate
rails db:seed
```
6. Run the application
```
rails s
```