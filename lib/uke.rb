require 'artii'

require_relative "uke/version"
require_relative "uke/chords"
require_relative "uke/fretboard"

class Uke
  def print_chord_list
    puts Uke::CHORDS.keys.join " "
  end

  def print_chords(which, style = nil)
    Array(which).each{ |chord_name|
      chords = CHORDS[chord_name]
      if !chords.empty?
        puts chords.reduce(
          chord_name_to_ascii_lines(chord_name)
        ){ |old_lines, chord|
          old_lines.zip(Fretboard.new(chord, style).lines).map(&:join)
        }.join($/)
      else
        $stderr.puts "\n   #{chord_name} not found"
      end
    }
  end

  private

  def chord_name_to_ascii_lines(chord)
    a = Artii::Base.new# font: 'roman'
    res = [" ", " ", " "]
    res += a.asciify(chord).split($/)
    res += [" "]

    max = res.max_by(&:size).size

    res.map{ |l| "  " + l.ljust(max) }
  end
end
