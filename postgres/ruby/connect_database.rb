require "pg"

conn = nil

host = ENV["DATA_TEST_PG_HOST"] || "0.0.0.0"
dbname = ENV["DATA_TEST_PG_DBNAME"] || "pdb"
user = ENV["DATA_TEST_PG_USER"] || "postgres"
password = ENV["DATA_TEST_PG_PASSWORD"] || "postgres"
port = ENV["DATA_TEST_PG_PORT"] || 5432

begin
  conn = PG.connect(
    host: host,
    dbname: dbname,
    user: user,
    password: password,
    port: port
  )
  puts "Connected to #{conn.db}"
rescue PG::Error => e
  warn "Connection error: #{e.message}"
ensure
  conn.close if conn
end
