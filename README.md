# uke gem [![[version]](https://badge.fury.io/rb/uke.svg)](http://badge.fury.io/rb/uke)

Displays popular ukulele chords for the popular `GCEA` tuning like this:

```
$ uke-chords G B7 C Cm
           
             ⚪                     
             ╒══╤══╤══╕  ╒══╤══╤══╕
     _____   │  │  │  │  │  │  │  │
    / ____|  ├──┼──┼──┤  ├──┼──┼──┤
   | |  __   │  ●  │  ●  │  ●  │  ●
   | | |_ |  ├──┼──┼──┤  ├──┼──┼──┤
   | |__| |  │  │  ●  │  │  │  ●  │
    \_____|  ├──┼──┼──┤  ├──┼──┼──┤
             │  │  │  │  ●  │  │  │
             └──┴──┴──┘  └──┴──┴──┘
           
                
                                        ⚪
                   ╒══╤══╤══╕  ╒══╤══╤══╕
    ____ ______    │  │  │  │  │  │  │  │
   |  _ \____  |   ├──┼──┼──┤  ├──┼──┼──┤
   | |_) |  / /    ●  │  ●  ●  │  │  ●  │
   |  _ <  / /     ├──┼──┼──┤  ├──┼──┼──┤
   | |_) |/ /      │  ●  │  │  │  ●  │  │
   |____//_/       ├──┼──┼──┤  ├──┼──┼──┤
                   │  │  │  │  ●  │  │  │
                   └──┴──┴──┘  └──┴──┴──┘
                
           
             ⚪  ⚪  ⚪     ⚪     ⚪     ⚪         
             ╒══╤══╤══╕  ╒══╤══╤══╕  ╒══╤══╤══╕
     _____   │  │  │  │  │  │  │  │  │  │  │  │
    / ____|  ├──┼──┼──┤  ├──┼──┼──┤  ├──┼──┼──┤
   | |       │  │  │  │  │  │  │  │  │  │  │  │
   | |       ├──┼──┼──┤  ├──┼──┼──┤  ├──┼──┼──┤
   | |____   │  │  │  ●  │  │  │  ●  │  │  ●  ●
    \_____|  ├──┼──┼──┤  ├──┼──┼──┤  ├──┼──┼──┤
             │  │  │  │  │  ●  │  │  │  ●  │  │
             └──┴──┴──┘  └──┴──┴──┘  └──┴──┴──┘
           
                     
                       ⚪         
                       ╒══╤══╤══╕
     _____             │  │  │  │
    / ____|            ├──┼──┼──┤
   | |     _ __ ___    │  │  │  │
   | |    | '_ ` _ \   ├──┼──┼──┤
   | |____| | | | | |  │  ●  ●  ●
    \_____|_| |_| |_|  ├──┼──┼──┤
                       │  │  │  │
                       └──┴──┴──┘

```

You can also get suggestions which fingers to use with the `--style fingering` option:

```
$ uke-chords --style fingering C

           	 ◯  ◯  ◯   	 ◯     ◯   	 ◯         
           	 ╒══╤══╤══╕	 ╒══╤══╤══╕	 ╒══╤══╤══╕
     _____ 	 │  │  │  │	 │  │  │  │	 │  │  │  │
    / ____|	 ├──┼──┼──┤	 ├──┼──┼──┤	 ├──┼──┼──┤
   | |     	 │  │  │  │	 │  │  │  │	 │  │  │  │
   | |     	 ├──┼──┼──┤	 ├──┼──┼──┤	 ├──┼──┼──┤
   | |____ 	 │  │  │ ➊	 │  │  │ ➊	 │  │  ➊ ➊
    \_____|	 ├──┼──┼──┤	 ├──┼──┼──┤	 ├──┼──┼──┤
           	 │  │  │  │	 │  ➋  │  │	 │  ➋  │  │
           	 └──┴──┴──┘	 └──┴──┴──┘	 └──┴──┴──┘
```

## Setup

Make sure that your computer has [Ruby 2.0 or higher installed](http://ruby.about.com/od/tutorials/a/installruby.htm).

Then run

```ruby
gem install uke
```

## Usage

On the command-line, run `uke-chords`, followed by the chords you want to display (see the example at top).

Run `uke-chords` without any parameters for a list of included chords.

## MIT License

Except for the chords, copyright (C) 2015 Jan Lelis <http://janlelis.com>. Released under the MIT license.

