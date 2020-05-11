require 'report'

describe 'generate report' do
  it 'when one green' do
    expect(report('Green')). to eq 'Green: 1'
  end
end
