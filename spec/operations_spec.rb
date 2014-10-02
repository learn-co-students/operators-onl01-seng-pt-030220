describe "unsafe? using an if else block" do
  it 'returns true if speed is greater than 60' do
    answer = unsafe?(79)
    expect(answer).to eq(true)
  end

  it 'returns true if speed is less than 40' do
    answer = unsafe?(35)
    expect(answer).to eq(true)
  end

  it 'returns false if the speed is between 40 and 60' do
    answer = unsafe?(50)

    expect(answer).to eq(false)
  end
end

describe "not_safe? using the ternary operator" do
  it 'returns true if speed is greater than 60' do
    answer = not_safe?(79)
    expect(answer).to eq(true)
  end

  it 'returns true if speed is less than 40' do
    answer = not_safe?(35)
    expect(answer).to eq(true)
  end

  it 'returns false if the speed is between 40 and 60' do
    answer = not_safe?(50)

    expect(answer).to eq(false)
  end

  it 'uses the ternary operator' do
    ternary_contents = File.read(File.join(File.dirname(__FILE__), '..', 'operations.rb'))
    match = ternary_contents.match(/def not_safe?[^\n]*\n([^\n]*)\nend/m)
    expect(match[1]).to match(/.*\?.*:.*/)
  end
end

describe "sum_machine" do
  it "returns the sum of the two parameters" do
    expect(sum_machine(1,9)).to eq 45
  end

  it "returns the sum of the two parameters even if passed in high to low" do
    expect(sum_machine(9,1)).to eq 45
  end

  it 'uses the +=' do
    ternary_contents = File.read(File.join(File.dirname(__FILE__), '..', 'operations.rb'))
    expect(ternary_contents.scan(/.*\+.*=.*/).length).to eq 1
  end
end

describe "squares" do
  numbers = [nil, 2, 4, 5, 6, nil, 10]

  it "returns an array of the squares of the the sum of the two parameters" do
    expect(squares(numbers)).to eq [0, 4, 16, 25, 36, 0, 100]
  end

  it 'uses the ||=' do
    ternary_contents = File.read(File.join(File.dirname(__FILE__), '..', 'operations.rb'))
    expect(ternary_contents.scan(/\\|\|=/).length).to eq(1)
  end
end