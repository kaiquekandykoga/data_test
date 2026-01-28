if ARGV[0] == "connect_database"
  require_relative "connect_database"
elsif ARGV[0] == "create_table"
  require_relative "create_table"
end
