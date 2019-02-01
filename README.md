# ror-docker
Create RoR app with docker images.


#usage
1. Clone repo
2. docker-compose run app rails new . --force  --database=mysql --skip-bundle
3. Edit config/database.yml
  - database: <%= ENV['DB_NAME'] %>
  - username: <%= ENV['DB_USER'] %>
  - password: <%= ENV['DB_PASSWORD'] %>
  - host: <%= ENV['DB_HOST'] %>

