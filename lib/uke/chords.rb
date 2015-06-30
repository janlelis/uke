class Uke
  CHORDS_RAW = <<CHORDS_RAW # stolen from https://github.com/zimolzak/ukulele/blob/master/lotsachords.txt
A   2,1,0,0
A   2,1,0,4
A   2,4,0,4
A#    3,2,1,1
A 5   2,4,0,0
A 7   0,1,0,0
A# 7  1,2,1,1
A 7   2,4,3,4
A 7sus  0,2,0,0
A# 7sus   1,3,1,1
A 9   2,1,0,2
A# 9  3,2,1,3
A 9   4,1,0,0
A aug   2,1,1,0
A aug   2,1,1,4
A# aug  3,2,2,1
A# dim  3,1,0,1
A# dim  3,1,0,4
A# dim  3,4,0,4
A# dim7   0,1,0,1
A dim7  2,3,2,3
A# dim7   3,4,3,4
A m   2,0,0,0
A m   2,0,0,3
A m   2,4,0,3
A# m  3,1,1,1
A# m  3,1,1,4
A m7  0,0,0,0
A# m7   1,1,1,1
A m7  2,4,3,3
A# m7b5   1,1,0,1
A m7b5  2,3,3,3
A# m7b5   3,4,4,4
A maj7  1,1,0,0
A# maj7   2,2,1,1
A maj7  2,4,4,4
A# maj7   3,2,1,0
A sus   2,2,0,0
A# sus  3,3,1,1
B   4,3,2,2
B 7   2,3,2,2
B 7   4,3,2,0
B 7sus  2,4,2,2
B 7sus  4,4,2,0
B 9   4,3,2,4
B aug   0,3,3,2
B aug   4,3,3,2
B dim   4,2,1,2
B dim7  1,2,1,2
B m   4,2,2,2
B m7  2,2,2,2
B m7  4,2,2,0
B m7b5  2,2,1,2
B m7b5  4,2,1,0
B maj7  3,3,2,2
B maj7  4,3,2,1
B sus   4,4,2,2
C   0,0,0,3
C   0,4,0,3
C   0,4,3,3
C#    1,1,1,4
C 5   0,0,3,3
C# 5  1,1,4,4
C 7   0,0,0,1
C# 7  1,1,1,2
C 7   3,4,3,3
C 7sus  0,0,1,1
C# 7sus   1,1,2,2
C 9   0,2,0,3
C# 9  1,3,1,4
C aug   1,0,0,3
C aug   1,4,0,3
C aug   1,4,4,3
C# dim  0,1,0,4
C# dim  0,4,0,4
C# dim  0,4,3,4
C m   0,3,3,3
C# m  1,1,0,4
C# m  1,4,0,4
C# m  1,4,4,4
C# m7   1,1,0,2
C m7  3,3,3,3
C# m7   4,4,4,4
C# m7b5   0,1,0,2
C m7b5  3,3,2,3
C# m7b5   4,4,3,4
C maj7  0,0,0,2
C# maj7   1,0,1,4
C# maj7   1,1,1,3
C maj7  4,4,3,3
C sus   0,0,1,3
C# sus  1,1,2,4
D#    0,3,3,1
D   2,2,2,0
D#    3,3,3,1
D 7   2,2,2,3
D# 7  3,3,3,4
D 7sus  2,2,3,3
D# 7sus   3,3,4,4
D# 9  0,3,1,1
D# dim  2,3,2,0
D m   2,2,1,0
D# m  3,3,2,1
D m7  2,2,1,3
D# m7   3,3,2,4
D m7b5  1,2,1,3
D# m7b5   2,3,2,4
D maj7  2,2,2,4
D sus   0,2,3,0
D# sus  1,3,4,1
D sus   2,2,3,0
D# sus  3,3,4,1
E   1,4,0,2
E   1,4,4,2
E   4,4,4,2
E 5   4,4,0,2
E 7   1,2,0,2
E 7sus  2,2,0,2
E 7sus  4,2,0,0
E 9   1,4,2,2
E dim   0,4,0,1
E dim   0,4,3,1
E dim   3,4,3,1
E m   0,4,0,2
E m   0,4,3,2
E m   4,4,3,2
E m7  0,2,0,2
E m7b5  0,2,0,1
E maj7  1,3,0,2
E sus   2,4,0,2
E sus   4,4,0,0
F   2,0,1,0
F   2,0,1,3
F#    3,1,2,1
F#    3,1,2,4
F 7   2,3,1,3
F# 7  3,4,2,4
F 7sus  3,3,1,3
F# 7sus   4,4,2,4
F 9   0,0,1,0
F# 9  1,1,2,1
F# dim  2,0,2,0
F# dim  2,0,2,3
F m   1,0,1,3
F# m  2,1,2,0
F# m  2,1,2,4
F m7  1,3,1,3
F# m7   2,4,2,4
F m7b5  1,3,1,2
F# m7b5   2,4,2,3
F maj7  2,4,1,3
F sus   3,0,1,1
F sus   3,0,1,3
F# sus  4,1,2,2
F# sus  4,1,2,4
G   0,2,3,2
G#    1,3,4,3
G   4,2,3,2
G 7   0,2,1,2
G# 7  1,3,2,3
G 7sus  0,2,1,3
G# 7sus   1,3,2,4
G 9   2,2,3,2
G# 9  3,3,4,3
G 9   4,2,3,0
G dim   0,1,3,1
G# dim  1,2,4,2
G dim   3,1,3,1
G dim   3,1,3,4
G# dim  4,2,4,2
G m   0,2,3,1
G# m  1,3,4,2
G m   3,2,3,1
G# m  4,3,4,2
G m7  0,2,1,1
G# m7   1,3,2,2
G m7b5  0,1,1,1
G# m7b5   1,2,2,2
G maj7  0,2,2,2
G# maj7   0,3,4,3
G# maj7   1,3,3,3
G sus   0,2,3,3
G# sus  1,3,4,4
CHORDS_RAW

  CHORDS = Hash.new{ |h, k| h[k] = [] }

  CHORDS_RAW.split($/).each{ |line|
    fingers = line[/\d,\d,\d,\d$/].split(',').map(&:to_i)
    chord = $`.tr ' ', ''
    CHORDS[chord] << fingers
  }
end
