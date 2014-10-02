describe "#unsafe?" do
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

describe "#not_safe?" do
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

describe "#sum_machine" do
  it "returns the sum of the two parameters" do
    expect(sum_machine(1,9)).to eq 45
    expect(sum_machine(3,7)).to eq 25
    expect(sum_machine(1,5)).to eq 15
  end

  it "returns the sum of the two parameters even if passed in high to low" do
    expect(sum_machine(9,1)).to eq 45
    expect(sum_machine(7,3)).to eq 25
    expect(sum_machine(5,1)).to eq 15
  end

  it 'uses the +=' do
    ternary_contents = File.read(File.join(File.dirname(__FILE__), '..', 'operations.rb'))
    expect(ternary_contents.scan(/.*\+.*=.*/).length).to eq 1
  end
end

describe "#square" do

  it "returns an array of the square of the the sum of the two parameters" do
    numbers = [2, 3, 5, 9]
    expect(square(numbers)).to eq [4, 9, 25, 81]
  end

  it "returns 0 for array elements that are not numbers" do
    numbers = [nil, 2, 4, nil, 6, nil, 10]
    expect(square(numbers)).to eq [0, 4, 16, 0, 36, 0, 100]
  end

  it 'uses the ||=' do
    ternary_contents = File.read(File.join(File.dirname(__FILE__), '..', 'operations.rb'))
    expect(ternary_contents.scan(/\\|\|=/).length).to eq(1)
  end
end