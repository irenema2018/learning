require 'minitest/autorun'
require "minitest/reporters"
require_relative 'queens'

Minitest::Reporters.use!(Minitest::Reporters::SpecReporter.new)

class QueensTest < MiniTest::Test

  def test_default_positions
    
    queens = Queens.new
    assert_equal [0, 3], queens.white
    assert_equal [7, 3], queens.black
  end

  def test_specific_placement
    # #skip
    queens = Queens.new(white: [3, 7], black: [6, 1])
    assert_equal [3, 7], queens.white
    assert_equal [6, 1], queens.black
  end

  def test_cannot_occupy_same_space
    # #skip
    assert_raises ArgumentError do #ArgumentError is an object
      Queens.new(white: [2, 4], black: [2, 4])
    end
  end

  def test_string_representation
    # #skip
    queens = Queens.new(white: [2, 4], black: [6, 6])
    board = <<-BOARD.chomp
O O O O O O O O
O O O O O O O O
O O O O W O O O
O O O O O O O O
O O O O O O O O
O O O O O O O O
O O O O O O B O
O O O O O O O O
    BOARD
    assert_equal board, queens.to_s
  end

  def test_cannot_attack
    #skip
    queens = Queens.new(white: [2, 3], black: [4, 7]) 
    #                    in ruby, the above is a hash, you can also add more pairs of keys and value 
    assert !queens.attack?
    # refute queens.attack?
  end

  def test_can_attack_on_same_row
    #skip
    queens = Queens.new(white: [2, 4], black: [2, 7])
    assert queens.attack?
  end

  def test_can_attack_on_same_column
    #skip
    queens = Queens.new(white: [5, 4], black: [2, 4])
    assert queens.attack?
  end

  def test_can_attack_on_diagonal
    #skip
    queens = Queens.new(white: [1, 1], black: [6, 6])
    assert queens.attack?
  end

  def test_can_attack_on_other_diagonal
    #skip
    queens = Queens.new(white: [0, 6], black: [1, 7])
    assert queens.attack?
  end

  def test_can_attack_on_yet_another_diagonal
    #skip
    queens = Queens.new(white: [4, 1], black: [6, 3])
    assert queens.attack?
  end

  def test_irene_create_can_attack_on_diagonal
    queens = Queens.new(white: [2, 3], black: [5, 6])
    assert queens.attack?
  end
end
