require './lib/post_code_checker'

describe PostCodeChecker do

  context '#trim' do
    it "removes all white space from the string ' loads of white space ' and returns 'loadsofwhitespace'." do
      expect(subject.trim(' loads of white space ')).to eq 'loadsofwhitespace'
    end

    it "returns 'loadsofwhitespace' when given 'loadsofwhitespace'." do
      expect(subject.trim('loadsofwhitespace ')).to eq 'loadsofwhitespace'
    end
  end

  context '#post_code_area' do
    it "returns 'ab' when give the post code 'ab127tb'" do
      expect(subject.post_code_area('ab127tb')).to eq 'ab'
    end

    it "returns 'a' when give the post code 'a127tb'" do
      expect(subject.post_code_area('a127tb')).to eq 'a'
    end

    it "returns false when give the post code that only starts with numbers" do
      expect(subject.post_code_area('127tb')).to be_falsey
    end


  end




end