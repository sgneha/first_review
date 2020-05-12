require 'report'

describe 'generate report' do
  it 'when empty string' do
    expect { report('') }. to raise_error 'Please provide valid grades'
  end
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
  it 'when all grades' do
    expect(report('Green,Red,Amber')). to eq "Green: 1\nAmber: 1\nRed: 1"
  end
  it 'when different color grade which is not acceptable' do
    expect(report('Orange')). to eq 'Uncounted: 1'
  end
  it 'when different color grade which is not acceptable' do
    expect(report('Orange,Red')). to eq "Red: 1\nUncounted: 1"
  end
  it 'when different color grade which is not acceptable' do
    expect(report('Green,Orange,Green,Red')). to eq "Green: 2\nRed: 1\nUncounted: 1"
  end
  it 'when different color grade which is not acceptable' do
    expect(report('Green,1,Green,Red')). to eq "Green: 2\nRed: 1\nUncounted: 1"
  end
end
