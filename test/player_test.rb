gem 'minitest'
require_relative '../lib/player'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class PlayerTest < Minitest::Test

  attr_reader :player

  def setup
    @player = Player.new
  end

  def test_class_exists
    assert_instance_of Player, player
  end

end
