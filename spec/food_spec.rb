RSpec.describe Foodie::Food do
  subject { Foodie::Food }

  it 'broccoli is gross' do
    expect(subject.portray('Broccoli')).to eql('Gross!')
  end

  it 'anything else is delicious' do
    expect(subject.portray('Not Broccoli')).to eql('Delicious!')
  end

  it 'pluralizes a word' do
    expect(subject.pluralize('Tomato')).to eql('Tomatoes')
  end
end
