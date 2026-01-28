require_relative "database_connection"

begin
  conn = establish_connection
  conn.exec <<-SQL
    CREATE TABLE IF NOT EXISTS users (
      id SERIAL PRIMARY KEY,
      name TEXT NOT NULL,
      email TEXT UNIQUE NOT NULL,
      created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    );
  SQL
  puts "Table created"
ensure
  conn.close
end
