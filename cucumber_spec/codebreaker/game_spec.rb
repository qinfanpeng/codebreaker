require 'spec_helper'

module Codebreaker
  describe Game do
    describe "When i start game " do

      let(:output) { double('output').as_null_object }
      let(:game) { Game.new(output) }

      it "Then i should see 'Welcome to Codebreaker!'" do
        output.should_receive(:puts).with('Welcome to Codebreaker!')
        game.start
      end

      it "And i should see 'Enter guess:'" do
        output.should_receive(:puts).with('Enter guess:')
        game.start
      end

    end

  end
end
