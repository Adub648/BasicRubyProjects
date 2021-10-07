# frozen_string_literal: true

require './CaesarCipherTest'

describe CaesarCipherTest do
  # before(:each) do
  #   @cipher = double("CeasarCipher")
  # end

  describe '#caesar_cipher' do
    it 'encrypts values 1 letter right' do
      cipher = CaesarCipherTest.new
      output = cipher.caesar_cipher('alex', 1)
      expect(output).to eql("bmfy")
    end

    it 'encrypts values 5 letters right' do
      cipher = CaesarCipherTest.new
      output = cipher.caesar_cipher("alex", 5)
      expect(output).to eql("fqjc")
    end

    it 'encrypts values in uppercase' do
      cipher = CaesarCipherTest.new
      output = cipher.caesar_cipher("ALEX", 5)
      expect(output).to eql("fqjc")
    end

    it 'wraps around the letters z to a' do
      cipher = CaesarCipherTest.new
      output = cipher.caesar_cipher("zzzzzz", 5)
      expect(output).to eql("eeeeee")
    end

    it 'doesnt alter punctuation' do
      cipher = CaesarCipherTest.new
      output = cipher.caesar_cipher("hey!!! How are you today?", 1)
      expect(output).to eql("ifz!!! ipx bsf zpv upebz?")
    end

    it 'doesnt alter numbers' do
      cipher = CaesarCipherTest.new
      output = cipher.caesar_cipher("i am the #1 out of 5 people", 5)
      expect(output).to eql("n fr ymj #1 tzy tk 5 ujtuqj")
    end
  end
end
