class StringCalculator
  def self.add(str)
    params = StringParams.new(str)
    params.scan_delimiter!

    params.split_and_sum
  end

  private

  class StringParams
    def initialize(params, delimiters = ",\n")
      @params     = params
      @delimiters = delimiters
    end

    def split_and_sum
      to_int(@params).inject { |sum, num| sum + num }
    end

    def scan_delimiter!
      if delimiter = scan_delimiter
        @delimiters << delimiter
        @params.sub!("//[#{delimiter}]", "")
      end
    end

    private

    def scan_delimiter
      @params.scan(/\[(.*?)\]/).flatten.first
    end

    def to_int(ary)
      ary.split(/[#{@delimiters}]/).map(&:to_i)
    end
  end
end
