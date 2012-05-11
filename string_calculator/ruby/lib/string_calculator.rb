class StringCalculator
  def self.add(str)
    params = StringParams.new(str)
    params.scan_delimiter!

    params.sum_delimited
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
    
    def sum_delimited
      delimited.map(&:to_i).inject(&:+)
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
