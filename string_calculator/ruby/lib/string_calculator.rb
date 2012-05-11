class StringCalculator
  def self.add(str)
    params = StringParams.new(str)
    params.scan_delimiter!

    params.split_and_sum
  end

  private

  class StringParams
    def initialize(params)
      @params     = params
      @delimiters = ",\n"
    end

    def scan_delimiter!
      if delimiter = scan_delimiter
        @delimiters << delimiter
        @params.sub!("//[#{delimiter}]", "")
      end
    end
    
    def split_and_sum
      delimited.map(&:to_i).inject { |sum, num| sum + num }
    end

    private

    def scan_delimiter
      @params.scan(/\[(.*?)\]/).flatten.first
    end

    def delimited
      @params.split(/[#{@delimiters}]/)
    end
  end
end
