require './scramble'

describe "Scramble tests" do
  it "Functionality test" do
    expect(scramble('rkqodlw', 'world')).to eq( true)
    expect(scramble('cedewaraaossoqqyt', 'codewars')).to eq( true)
    expect(scramble('katas', 'steak')).to eq(false)
    expect(scramble('scriptjava', 'javascript')).to eq( true)
    expect(scramble('scriptingjava', 'javascript')).to eq( true)
    expect(scramble('scriptjavx', 'javascript')).to eq(false)
  end  
  
  xit "Performance test" do
    s1 = "abcdefghijklmnopqrstuvwxyz" * 100_000
    s2 = "zyxcba" * 90_000
    expect(scramble(s1, s2)).to eq(true)
  end
  
end