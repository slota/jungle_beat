require_relative 'jungle_beat'

class FileIO

  def initialize(input)
    @input = File.open(ARGV[0]).read
  end

  def play
    jb = JungleBeat.new(@input)
    jb.play
  end

end

play_jungle_beat = FileIO.new(ARGV[0])
play_jungle_beat.play
