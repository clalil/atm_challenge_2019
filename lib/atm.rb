class Atm
  attr_accessor :funds

  def initialize
    @funds = 1000
  end
end

describe Atm do
  it 'has 1000$ on initialize' do
    expect(subject.funds).to eq 1000
  end
end