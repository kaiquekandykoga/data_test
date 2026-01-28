require "pg"

def establish_connection
  host = ENV["DATA_TEST_PG_HOST"] || "0.0.0.0"
  dbname = ENV["DATA_TEST_PG_DBNAME"] || "pdb"
  user = ENV["DATA_TEST_PG_USER"] || "postgres"
  password = ENV["DATA_TEST_PG_PASSWORD"] || "postgres"
  port = ENV["DATA_TEST_PG_PORT"] || 5432

  PG.connect(
    host: host,
    dbname: dbname,
    user: user,
    password: password,
    port: port
  )
end
