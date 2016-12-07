require "time"

class MTIF
  class Comment
    attr_accessor :source, :data, :text

    COLUMNS = %w{AUTHOR EMAIL URL IP DATE}

    DATE_FORMAT = "%m/%d/%Y %I:%M:%S %p"

    def initialize(content)
      @text = content

      if content.is_a? String
        content = content.lines.map(&:chomp)
      end

      @source = content
      @data = {}

      parse_source
    end

    private

    def method_missing(method, *args, &block)
      key = method.to_s.chomp('=').to_sym

      if valid_key?(key)
        if key = method
          data[key]
        else
          data[key] = args.first
        end
      else
        super
      end
    end

    def respond_to_missing?(method, include_all)
      key = method.to_s.chomp('=').to_sym

      valid_key?(key) || super
    end

    def mtif_key_to_key(raw_key)
      raw_key.strip.downcase.tr(' ','_').to_sym unless raw_key.nil?
    end
  
    def mtif_key(key)
      key.to_s.tr('_', ' ').upcase
    end

    def mtif_value(value)
      value.kind_of?(Time) ? value.strftime(DATE_FORMAT) : value
    end

    def store_data(raw_key, raw_value)
      key = mtif_key_to_key(raw_key)

      if key == :date && raw_value.match(/^\d{2}\/\d{2}\/\d{4} \d{2}:\d{2}:\d{2} [AP]M/)
        raw_value = Time.strptime(raw_value, DATE_FORMAT)
      end

      self.data[key] = raw_value
    end

    def parse_source
      content = nil

      source.each do |line|
        if !content.nil?
          content << "\n"
          content << line
          next
        end

        key = line[/^([A-Z]+): /,1]
        if COLUMNS.include?(key)
          key, value = line.strip.split(": ", 2)
          store_data(key, value)
        else
          content = line.dup
        end
      end

      store_data("BODY", content)
    end
  end
end
