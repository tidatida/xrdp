#!/bin/sh

which setxkbmap
if test $? -ne 0
then
  echo "error, setxkbmap not found"
  exit 1
fi

# English - US 'en-us' 0x00000409
setxkbmap -model pc104 -layout us
./xrdp-genkeymap ../instfiles/km-00000409.ini

# English - UK 'en-GB' 0x00000809
setxkbmap -model pc105 -layout gb
./xrdp-genkeymap ../instfiles/km-00000809.ini

# German 'de' 0x00000407
setxkbmap -model pc104 -layout de
./xrdp-genkeymap ../instfiles/km-00000407.ini

# Italy 'it' 0x00000410
setxkbmap -model pc104 -layout it
./xrdp-genkeymap ../instfiles/km-00000410.ini

# Japanese 'jp' 0x00000411
setxkbmap -model jp106 -layout jp -variant OADG109A
./xrdp-genkeymap ../instfiles/km-00000411.ini
./xrdp-genkeymap ../instfiles/km-e0010411.ini
./xrdp-genkeymap ../instfiles/km-e0200411.ini
./xrdp-genkeymap ../instfiles/km-e0210411.ini

# Polish 'pl' 0x00000415
setxkbmap -model pc104 -layout pl
./xrdp-genkeymap ../instfiles/km-00000415.ini

# Russia 'ru' 0x00000419
setxkbmap -model pc104 -layout ru
./xrdp-genkeymap ../instfiles/km-00000419.ini

# Sweden 'se' 0x0000041d
setxkbmap -model pc104 -layout se
./xrdp-genkeymap ../instfiles/km-0000041d.ini

# Portuguese -PT 'pt-pt' 0x00000816
setxkbmap -model pc104 -layout pt
./xrdp-genkeymap ../instfiles/km-00000816.ini

# set back to en-us
setxkbmap -model pc104 -layout us
