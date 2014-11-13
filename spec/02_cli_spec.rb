describe "Part Two - CLI" do
  require_relative '../lib/cli.rb'

  let(:method_names) { ["unsafe?","not_safe?","square","sum_machine"] }

  describe "#welcome_message" do
    it "prints a welcome message to screen" do
      output = capture_stdout { welcome_message }
      expect(output).to match("Welcome!")
    end
  end

  describe "#print_methods" do
    it "prints out 'All Methods' followed by a list of every method name" do
      output = capture_stdout { print_methods }
      expect(output).to match("All Methods:")
      method_names.each { |name| expect(output).to include(name) }
    end
  end

  # unsafe?
  # not_safe?
  # sum_machine
  # square

  describe "#main" do
    
    it "prompts user to type in a method name or to quit" do
      allow(self).to receive(:gets).and_return("unsafe?")
      output = capture_stdout { main }
      expect(output).to include("Type the name of the method you would like to use, type q to quit:")
    end

    it "prompts user for number when they enter 'unsafe?'" do
      allow(self).to receive(:gets).and_return("unsafe?")
      output = capture_stdout { main }
      expect(output).to include("Type a number to give to unsafe?:")
    end

    it "prompts user for number when they enter 'not_safe?'" do
      allow(self).to receive(:gets).and_return("not_safe?")
      output = capture_stdout { main }
      expect(output).to include("Type a number to give to not_safe?:")
    end

    it "prompts user for two comma separated numbers when they enter 'sum_machine'" do
      allow(self).to receive(:gets).and_return("sum_machine")
      output = capture_stdout { main }
      expect(output).to include("Type a number to give to sum_machine:")
    end

    it "prints out a 'not recognized' error when user types in a method name that does not exist" do
      allow(self).to receive(:gets).and_return("incorrect_method_name")
      output = capture_stdout { main }
      expect(output).to include("Method name not recognized.")
    end
  end

end