require_relative "database_connection"

conn = nil

begin
  conn = establish_connection
  puts "Connected to #{conn.db}"
rescue PG::Error => e
  warn "Connection error: #{e.message}"
ensure
  if conn
    puts "Closing connection to #{conn.db}"
    conn.close
    puts "Connection closed"
  end
end
