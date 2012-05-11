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
      if delimiter = @params[/\[(.*?)\]/, 1]
        @delimiters << delimiter
        @params.sub!("//[#{delimiter}]", "")
      end
    end
    
    def sum_delimited
      delimited.map(&:to_i).reduce(&:+)
    end

    private

    def delimited
      @params.split(/[#{@delimiters}]/)
    end
  end
end
