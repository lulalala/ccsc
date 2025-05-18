module Exporters
  # Provides functionality to generate SQL INSERT and UPSERT statements from Ruby hashes
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
    #
    # Generates a SQL UPSERT statement for a single row using MySQL's ON DUPLICATE KEY UPDATE syntax
    #
    # @param table_name [String] The name of the target table
    # @param data_hash [Hash] A hash where keys are column names and values are the data to insert/update
    # @param key_columns [Array<Symbol, String>] Array of column names that form the unique key for updates
    # @return [String] A properly formatted SQL UPSERT statement
    #
    # @example
    #   data = { id: 1, name: 'John', age: 25, email: 'john@example.com' }
    #   SqlInsertExporter.generate_upsert('users', data, [:id])
    #   # => "INSERT INTO users (id, name, age, email) VALUES (1, 'John', 25, 'john@example.com') 
    #   #     ON DUPLICATE KEY UPDATE name = 'John', age = 25, email = 'john@example.com';"
    def self.generate_insert(table_name, data_hash)
      columns = data_hash.keys
      values = data_hash.values.map { |v| format_sql_value(v) }
      
      "INSERT INTO #{table_name} (#{columns.join(', ')}) VALUES (#{values.join(', ')});"
    end

    def self.generate_upsert(table_name, data_hash, key_columns)
      raise ArgumentError, 'key_columns must be an array' unless key_columns.is_a?(Array)
      raise ArgumentError, 'key_columns cannot be empty' if key_columns.empty?
      raise ArgumentError, 'data_hash must contain all key_columns' unless key_columns.all? { |k| data_hash.key?(k.to_sym) || data_hash.key?(k.to_s) }

      columns = data_hash.keys
      values = data_hash.values.map { |v| format_sql_value(v) }
      
      # Generate the update part excluding key columns
      update_columns = columns.reject { |col| key_columns.map(&:to_s).include?(col.to_s) }
      update_assignments = update_columns.map do |col|
        "#{col} = #{format_sql_value(data_hash[col])}"
      end

      base_insert = "INSERT INTO #{table_name} (#{columns.join(', ')}) VALUES (#{values.join(', ')})"
      update_clause = update_assignments.join(', ')
      
      return base_insert + ';' if update_assignments.empty?
      "#{base_insert} ON DUPLICATE KEY UPDATE #{update_clause};"
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