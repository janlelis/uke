class Uke
  class Fretboard
    STYLES = {
      small: { open: " ∘", finger: " •" },
      medium: { open: " ⚪", finger: " ⚫"},
      large: { open: " ◯", finger: " " },
      fingering: {open: " ◯", finger: [" ➊", " ➋", " ➌", " ➍"]}
    }

    def initialize(chord, style = nil)
      @chord  = chord
      @style = style.to_sym
      raise ArgumentError, 'Unknown style' unless STYLES[@style]
      @config = chord_to_config(@chord)
    end

    def lines
      (TEMPLATE % @config).split($/).map do |line|
        matches = line.match(/(([➊➋➌➍]\s{2,})+[^│])/)

        if matches
          part = matches.captures.first
          line.gsub(part, part.gsub(/\s{2}/, ' '))
        else
          line
        end
      end
    end

    private

    def chord_to_config(chord)
      config = DEFAULT_CONFIG.dup

      chord.positions.each_with_index do |position, index|
        if position == 0
          config[index] = STYLES[@style][:open]
        else
          finger = finger_symbol(chord, index)
          finger = index === 3 && @style != :small ? finger.strip : finger
          config[position * 4 + index] = finger
        end
      end

      config
    end

    def finger_symbol(chord, index)
      finger = STYLES[@style][:finger]

      if @style == :fingering
        return STYLES[:large][:finger] unless chord.fingers

        finger_index = chord.fingers[index] - 1
        finger_index.negative? ? STYLES[:large][:finger] : finger[finger_index]
      else
        STYLES[@style][:finger]
      end
    end

    DEFAULT_CONFIG = [
      "  ", "  ", "  ", "  ",
      " │", " │", " │", " │",
      " │", " │", " │", " │",
      " │", " │", " │", " │",
      " │", " │", " │", " │",
      " │", " │", " │", " │",
    ]

    TEMPLATE = <<TEMPLATE

\t%s %s %s %s
\t ╒══╤══╤══╕
\t%s %s %s %s
\t ├──┼──┼──┤
\t%s %s %s %s
\t ├──┼──┼──┤
\t%s %s %s %s
\t ├──┼──┼──┤
\t%s %s %s %s
\t └──┴──┴──┘

TEMPLATE
  end
end
