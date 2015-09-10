require 'linked_list'
require 'jungle_beat'

class JungleBeatTest < Minitest::Test

  def test_it_connects
    jb = JungleBeat.new("test")
    assert_equal "test", jb.beats.head.data
  end

  def test_it_knows_the_tail
    jb = JungleBeat.new("tail")
    assert_equal "tail", jb.beats.tail.data
  end
  #
  def test_it_builds_two_nodes
    jb = JungleBeat.new("head tail")
    assert_equal "head", jb.beats.head.data
    assert_equal "tail", jb.beats.tail.data
  end

  def test_it_builds_three_nodes
    jb = JungleBeat.new("head second tail")
    assert_equal "head", jb.beats.head.data
    assert_equal "tail", jb.beats.tail.data
  end

  def test_it_knows_the_head
    jb = JungleBeat.new("test")
    assert_equal "test", jb.beats.head.data
  end

  def test_it_plays
    jb = JungleBeat.new("beats")
    assert_equal "`say -r 500 -v Boing beats`", jb.play
  end

  def test_you_can_see_all_2
    jb = JungleBeat.new("deep dep dep deep deep bop bop deep")
    assert_equal "deep dep dep deep deep bop bop deep", jb.all
  end
  #
  def test_does_it_include?
    jb = JungleBeat.new("tee tee tee tee deep dep dep deep deep bop bop deep")
    assert_equal true, jb.include?("dep")
  end

  def test_it_does_not_lie
    jb = JungleBeat.new("tee tee tee tee deep dep dep deep deep bop bop deep")
    assert_equal false, jb.include?("Raiders Rule")
  end

  def test_it_counts
    jb = JungleBeat.new("tee tee tee tee deep dep dep deep deep bop bop deep")
    assert_equal 12, jb.count
  end
  #
  def test_you_can_see_all
    jb = JungleBeat.new("deep dep dep deep deep bop bop deep")
    assert_equal "deep dep dep deep deep bop bop deep", jb.all
  end

  def test_it_can_pop
    jb = JungleBeat.new("tee tee tee tee deep dep dep deep deep bop bop deep")
    assert_equal "deep bop bop deep", jb.pop(4)
  end

  def test_to_see_if_each_word_is_a_separate_node
    jb = JungleBeat.new("there are a couple words")
    assert_equal 5, jb.beats.count
  end

  def test_does_it_insert_correctly
    jb = JungleBeat.new("head middle tail")
    jb.insert(1, "insert")
    assert_equal "head insert middle tail", jb.all
  end

  def test_does_it_insert_multiples_correctly
    jb = JungleBeat.new("head middle tail")
    jb.insert(1, "insert america")
    assert_equal "head insert america middle tail", jb.all
  end

  def test_it_appends_multiples
    jb = JungleBeat.new("head middle tail")
    jb.append("insert america")
    assert_equal "head middle tail insert america", jb.all
  end

  def test_it_prepends_multiples
    jb = JungleBeat.new("head middle tail")
    jb.prepends("insert america")
    assert_equal "insert america head middle tail", jb.all
  end

  def test_it_finds_multiples
    jb = JungleBeat.new("head middle tail")
    assert_equal "middle tail", jb.find(1, 2)
  end
  
  def test_it_tries_too_hard
    jb = JungleBeat.new("head middle tail")
    assert_equal "middle tail [No mas linkage past here]", jb.find(1, 3)
  end


end
