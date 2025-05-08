module Exporters
  # Provides functionality to generate SQL INSERT statements from Ruby hashes
  class SqlInsertExporter
    # Generates a SQL INSERT statement for a single row
    #
    # @param table_name [String] The name of the target table
    # @param data_hash [Hash] A hash where keys are column names and values are the data to insert
    # @return [String] A properly formatted SQL INSERT statement
    #
    # @example
    #   data = { name: 'John', age: 25, email: 'john@example.com' }
    #   SqlInsertExporter.generate_insert('users', data)
    #   # => "INSERT INTO users (name, age, email) VALUES ('John', 25, 'john@example.com');"
    def self.generate_insert(table_name, data_hash)
      columns = data_hash.keys
      values = data_hash.values.map { |v| format_sql_value(v) }
      
      "INSERT INTO #{table_name} (#{columns.join(', ')}) VALUES (#{values.join(', ')});"
    end

    private

    def self.format_sql_value(value)
      case value
      when String
        "'#{escape_sql_string(value)}'"
      when Numeric
        value.to_s
      when NilClass
        'NULL'
      else
        "'#{escape_sql_string(value.to_s)}'"
      end
    end

    def self.escape_sql_string(string)
      string.to_s.gsub("'", "''")
    end
  end
end