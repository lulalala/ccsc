require 'spec_helper'
require_relative '../../../lib/exporters/sql_insert_exporter'

RSpec.describe Exporters::SqlInsertExporter do
  let(:table_name) { 'users' }
  let(:basic_data) { { name: 'John Doe', age: 30, email: 'john@example.com' } }
  let(:data_with_key) { { id: 1, name: 'John Doe', age: 30, email: 'john@example.com' } }

  describe '.generate_insert' do
    it 'generates a valid INSERT statement' do
      result = described_class.generate_insert(table_name, basic_data)
      expect(result).to eq(
        "INSERT INTO users (name, age, email) VALUES ('John Doe', 30, 'john@example.com');"
      )
    end

    it 'handles NULL values correctly' do
      data = { name: 'John Doe', age: nil, email: 'john@example.com' }
      result = described_class.generate_insert(table_name, data)
      expect(result).to eq(
        "INSERT INTO users (name, age, email) VALUES ('John Doe', NULL, 'john@example.com');"
      )
    end

    it 'escapes single quotes in strings' do
      data = { name: "O'Connor", age: 30 }
      result = described_class.generate_insert(table_name, data)
      expect(result).to eq(
        "INSERT INTO users (name, age) VALUES ('O''Connor', 30);"
      )
    end
  end

  describe '.generate_upsert' do
    it 'generates a valid UPSERT statement' do
      result = described_class.generate_upsert(table_name, data_with_key, [:id])
      expect(result).to eq(
        "INSERT INTO users (id, name, age, email) VALUES (1, 'John Doe', 30, 'john@example.com') " \
        "ON DUPLICATE KEY UPDATE name = 'John Doe', age = 30, email = 'john@example.com';"
      )
    end

    it 'handles multiple key columns' do
      data = { region: 'EU', user_id: 1, name: 'John', score: 100 }
      result = described_class.generate_upsert(table_name, data, [:region, :user_id])
      expect(result).to eq(
        "INSERT INTO users (region, user_id, name, score) VALUES ('EU', 1, 'John', 100) " \
        "ON DUPLICATE KEY UPDATE name = 'John', score = 100;"
      )
    end

    it 'handles NULL values in non-key columns' do
      data = { id: 1, name: 'John', age: nil, email: 'john@example.com' }
      result = described_class.generate_upsert(table_name, data, [:id])
      expect(result).to eq(
        "INSERT INTO users (id, name, age, email) VALUES (1, 'John', NULL, 'john@example.com') " \
        "ON DUPLICATE KEY UPDATE name = 'John', age = NULL, email = 'john@example.com';"
      )
    end

    it 'escapes single quotes in strings for both INSERT and UPDATE parts' do
      data = { id: 1, name: "O'Connor", title: "Teacher's Aid" }
      result = described_class.generate_upsert(table_name, data, [:id])
      expect(result).to eq(
        "INSERT INTO users (id, name, title) VALUES (1, 'O''Connor', 'Teacher''s Aid') " \
        "ON DUPLICATE KEY UPDATE name = 'O''Connor', title = 'Teacher''s Aid';"
      )
    end

    it 'returns just INSERT statement when all columns are key columns' do
      data = { id: 1, region: 'EU' }
      result = described_class.generate_upsert(table_name, data, [:id, :region])
      expect(result).to eq(
        "INSERT INTO users (id, region) VALUES (1, 'EU');"
      )
    end

    context 'with invalid input' do
      it 'raises ArgumentError when key_columns is not an array' do
        expect {
          described_class.generate_upsert(table_name, data_with_key, :id)
        }.to raise_error(ArgumentError, 'key_columns must be an array')
      end

      it 'raises ArgumentError when key_columns is empty' do
        expect {
          described_class.generate_upsert(table_name, data_with_key, [])
        }.to raise_error(ArgumentError, 'key_columns cannot be empty')
      end

      it 'raises ArgumentError when key_columns contains columns not in data_hash' do
        expect {
          described_class.generate_upsert(table_name, basic_data, [:id])
        }.to raise_error(ArgumentError, 'data_hash must contain all key_columns')
      end
    end
  end
end