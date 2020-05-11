require 'report'

describe 'generate report' do
  it 'when one green' do
    expect(report('Green')). to eq 'Green: 1'
  end
  it 'when one red' do
    expect(report('Red')). to eq 'Red: 1'
  end
  it 'when one amber' do
    expect(report('Amber')). to eq 'Amber: 1'
  end
  it 'when two greens' do
    expect(report('Green,Green')). to eq 'Green: 2'
  end
end
