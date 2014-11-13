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
      expect(output).to include("All Methods:")
      method_names.each { |name| expect(output).to include(name) }
    end
  end

  describe "#main" do
    it "prints out a prompt to type in a method name" do
      allow(self).to receive(:gets).and_return("incorrect_method_name")
      output = capture_stdout { main }
      expect(output).to match("Type the name of the method you would like to use, type q to quit:")
    end
  end

end