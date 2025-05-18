require 'test_helper'

class SqlInsertExporterTest < ActiveSupport::TestCase
  def setup
    @exporter = Exporters::SqlInsertExporter
  end

  test "generates basic insert statement with string data" do
    data = { name: 'John', email: 'john@example.com' }
    expected = "INSERT INTO users (name, email) VALUES ('John', 'john@example.com');"
    assert_equal expected, @exporter.generate_insert('users', data)
  end

  test "generates insert statement with numeric data" do
    data = { age: 25, score: 98.6 }
    expected = "INSERT INTO stats (age, score) VALUES (25, 98.6);"
    assert_equal expected, @exporter.generate_insert('stats', data)
  end

  test "handles null values correctly" do
    data = { name: 'John', phone: nil }
    expected = "INSERT INTO contacts (name, phone) VALUES ('John', NULL);"
    assert_equal expected, @exporter.generate_insert('contacts', data)
  end

  test "handles empty hash data" do
    data = {}
    expected = "INSERT INTO empty_table () VALUES ();"
    assert_equal expected, @exporter.generate_insert('empty_table', data)
  end

  test "escapes single quotes in string values" do
    data = { name: "O'Connor", message: "Don't forget" }
    expected = "INSERT INTO messages (name, message) VALUES ('O''Connor', 'Don''t forget');"
    assert_equal expected, @exporter.generate_insert('messages', data)
  end

  test "converts non-string/numeric objects to escaped strings" do
    custom_obj = Object.new
    def custom_obj.to_s; "Custom'Object"; end
    
    data = { object: custom_obj }
    expected = "INSERT INTO objects (object) VALUES ('Custom''Object');"
    assert_equal expected, @exporter.generate_insert('objects', data)
  end
end