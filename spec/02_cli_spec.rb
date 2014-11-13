require 'pry'
describe "Part Two - CLI" do
  require_relative '../lib/cli.rb'

  let(:names)     { ["unsafe?","not_safe?","square","sum_machine"] }
  let(:arguments) { ["number","number","number,number","array of numbers"] }
  let (:examples) { ['unsafe?(95)', 'not_safe?(50)', 'sum_machine(4,6)', 'square([3,5,6])'] }

  describe "#welcome_message" do
    it "prints 'Welcome!' to screen" do
      output = capture_stdout { welcome_message }
      expect(output).to match("Welcome!")
    end
  end

  describe "#print_methods" do
    it "prints out 'All Methods:' followed by a list of every method name" do
      output = capture_stdout { print_methods }
      expect(output).to match("All Methods:")
      [names,arguments,examples].each { |arr| arr.each { |str| expect(output).to include(str) } }
    end
  end

  describe "#main" do
    
    it "prompts user to type in a method name or to quit" do
      allow(self).to receive(:gets).and_return("unsafe?(50)")
      output = capture_stdout { main }
      expect(output).to include("Type a method followed by its arguments in parenthesis, type q to quit:")
    end

    it "prints 'not recognized' error when user types in a method name that does not exist" do
      allow(self).to receive(:gets).and_return("unsave?(34)")
      output = capture_stdout { main }
      expect(output).to include("Method name not recognized.")
    end
    
    it "says 'Goodbye' and quits the program when user types 'q'" do
      allow(self).to receive(:gets).and_return("q")
      output = capture_stdout { main }
      expect(output).to include("Goodbye!")
    end
    
    it "puts false when the user types 'unsafe?(50)'" do
      allow(self).to receive(:gets).and_return("unsafe?(50)")
      output = capture_stdout { main }
      expect(output).to include("false")
    end

    it "puts true when the user types 'unsafe?(105)'" do
      allow(self).to receive(:gets).and_return("unsafe?(100)")
      output = capture_stdout { main }
      expect(output).to include("true")
    end

    it "puts false when the user types 'not_safe?(60)'" do
      allow(self).to receive(:gets).and_return("not_safe?(60)")
      output = capture_stdout { main }
      expect(output).to include("false")
    end

    it "puts true when the user types 'not_safe?(60)'" do
      allow(self).to receive(:gets).and_return("not_safe?(105)")
      output = capture_stdout { main }
      expect(output).to include("true")
    end

    it "puts 45 when the user types 'sum_machine(1,9)'" do
      allow(self).to receive(:gets).and_return("sum_machine(1,9)")
      output = capture_stdout { main }
      expect(output).to include("45")
    end

    it "puts 15 when the user types 'sum_machine(1,5)'" do
      allow(self).to receive(:gets).and_return("sum_machine(1,5)")
      output = capture_stdout { main }
      expect(output).to include("15")
    end

    it "puts [4, 9, 25] when the user types 'square([2,3,5])'" do
      allow(self).to receive(:gets).and_return("square([2, 3, 5])")
      output = capture_stdout { main }
      [4, 9, 25].each { |num| expect(output).to include(num.to_s) }
    end

    it "puts [1, 4, 16] when the user types 'square(1,5)'" do
      allow(self).to receive(:gets).and_return("square([1, 2, 4])")
      output = capture_stdout { main }
      [1, 4, 16].each { |num| expect(output).to include(num.to_s) }
    end

  end

end
