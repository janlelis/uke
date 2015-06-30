class Uke
  class Fretboard
    STYLES = {
      small: { open: " ⚪", finger: " ●" },
      large: { open: " ￮", finger: "⬤ " },
    }

    def initialize(chord, style = nil)
      @chord  = chord
      @style = style.to_sym
      raise ArgumentError, 'Unknown style' unless STYLES[@style]
      @config = chord_to_config(@chord)
    end

    def lines
      (TEMPLATE % @config).split($/)
    end

    private

    def chord_to_config(chord)
      config = DEFAULT_CONFIG.dup
      chord.each_with_index{ |n, i|
        if n == 0
          config[i] = STYLES[@style][:open]
        else
          config[n*4+i] = STYLES[@style][:finger]
        end
      }
      config
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