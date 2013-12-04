# sox
# Autogenerated from man page /usr/share/man/man1/sox.1.gz
# using Deroffing man parser
complete -c sox -l buffer -l input-buffer --description 'Set the size in bytes of the buffers used for p… [See Man Page]'
complete -c sox -l clobber --description 'Don\'t prompt before overwriting an existing fil… [See Man Page]'
complete -c sox -l combine --description 'Select the input file combining method; for som… [See Man Page]'
complete -c sox -s D -l no-dither --description 'Disable automatic dither\\*msee `Dithering\' above.'
complete -c sox -l effects-file --description 'Use FILENAME to obtain all effects and their arguments.'
complete -c sox -s G -l guard --description 'Automatically invoke the  gain effect to guard … [See Man Page]'
complete -c sox -s h -l help --description 'Show version number and usage information.'
complete -c sox -l help-effect --description 'Show usage information on the specified effect.'
complete -c sox -l help-format --description 'Show information about the specified file format.'
complete -c sox -l i -l info --description 'Only if given as the first parameter to  sox , … [See Man Page]'
complete -c sox -s m -s M --description 'Equivalent to --combine mix and --combine merge, respectively.'
complete -c sox -l magic --description 'If SoX has been built with the optional `libmag… [See Man Page]'
complete -c sox -l multi-threaded -l single-threaded --description 'By default, SoX is `single threaded\'.'
complete -c sox -l no-clobber --description 'Prompt before overwriting an existing file with… [See Man Page]'
complete -c sox -l 'norm[' --description 'Automatically invoke the  gain effect to guard … [See Man Page]'
complete -c sox -l play-rate-arg --description 'Selects a quality option to be used when the `r… [See Man Page]'
complete -c sox -l plot --description 'If not set to  off (the default if  --plot is n… [See Man Page]'
complete -c sox -s q -l no-show-progress --description 'Run in quiet mode when SoX wouldn\'t otherwise do so.'
complete -c sox -s R --description 'Run in `repeatable\' mode.'
complete -c sox -l replay-gain --description 'Select whether or not to apply replay-gain adju… [See Man Page]'
complete -c sox -s S -l show-progress --description 'Display input file format/header information, a… [See Man Page]'
complete -c sox -s T --description 'Equivalent to --combine multiply.'
complete -c sox -l temp --description 'Specify that any temporary files should be crea… [See Man Page]'
complete -c sox -l version --description 'Show SoX\'s version number and exit.'
complete -c sox -o 'V[level]' --description 'Set verbosity.'
complete -c sox -l ignore-length --description 'Override an (incorrect) audio length given in a… [See Man Page]'
complete -c sox -s v -l volume --description 'Intended for use when combining multiple input … [See Man Page]'
complete -c sox -s b -l bits --description 'The number of bits (a. k. a.'
complete -c sox -o 1/-2/-3/-4/-8 --description 'The number of bytes in each encoded sample.'
complete -c sox -s c -l channels --description 'The number of audio channels in the audio file.'
complete -c sox -s e -l encoding --description 'The audio encoding type.'
complete -c sox -o s/-u/-f/-A/-U/-o/-i/-a/-g --description 'Deprecated aliases for specifying the encoding … [See Man Page]'
complete -c sox -l no-glob --description 'Specifies that filename `globbing\' (wild-card m… [See Man Page]'
complete -c sox -s r -l rate --description 'Gives the sample rate in Hz (or kHz if appended… [See Man Page]'
complete -c sox -s t -l type --description 'Gives the type of the audio file.'
complete -c sox -s N -l reverse-nibbles --description 'Specifies that the nibble ordering (i. e.'
complete -c sox -s X -l reverse-bits --description 'Specifies that the bit ordering of the samples … [See Man Page]'
complete -c sox -l add-comment --description 'Append a comment in the output file header (where applicable).'
complete -c sox -l comment --description 'Specify the comment text to store in the output… [See Man Page]'
complete -c sox -l comment-file --description 'Specify a file containing the comment text to s… [See Man Page]'
complete -c sox -s V --description 'option to see what processing SoX has automatically added.'
complete -c sox -s p -l sox-pipe --description 'This can be used in place of an output filename… [See Man Page]'
complete -c sox -s d -l default-device --description 'This can be used in place of an input or output… [See Man Page]'
complete -c sox -s n -l null --description 'This can be used in place of an input or output… [See Man Page]'
complete -c sox -l norm --description 'and the gain effect.'
complete -c sox -o '25	-	-11' --description '.'
complete -c sox -o '23	T{' --description '= T}	-9	====-.'
complete -c sox -o 21 -o '	-7' --description '.'
complete -c sox -o 19 -s 5 --description '.'
complete -c sox -o 17 -o '	-3' --description '.'
complete -c sox -o 15 -s 1 --description '.'
complete -c sox -o 13 --description 'A three-second peak-held value of headroom in d… [See Man Page]'
complete -c sox -o V0 --description 'sets it to 0.'
complete -c sox -s L -l endian --description '.'
complete -c sox -s B --description '.'
complete -c sox -s x --description '  These options specify whether the byte-order … [See Man Page]'
complete -c sox -s C -l compression --description 'The compression factor for variably compressing… [See Man Page]'
complete -c sox -s f --description 'and.'
complete -c sox -s o --description 'parameters may be used to adjust these paramete… [See Man Page]'
complete -c sox -o 90 --description 'dB.'
complete -c sox -o '70dB)' --description 'boosting the volume on `silent\' passages such a… [See Man Page]'
complete -c sox -s s --description 'With the.'
complete -c sox -s a --description 'option enables a mode where dithering (and nois… [See Man Page]'
complete -c sox -s l --description 'option invokes a simple limiter, e. g.'
complete -c sox -s 2 --description 'width applies only to double-pole filters; the … [See Man Page]'
complete -c sox -o 'n.' --description 'frequency of about 75 Hz.'
complete -c sox -o 'q	T{' --description '.'
complete -c sox -o 'l	low	80%	100	T{' --description '.'
complete -c sox -o 'm	medium	95%	100	T{' --description '.'
complete -c sox -o 'h	high	95%	125	T{' --description '.'
complete -c sox -o 'v	T{' --description '.'
complete -c sox -o 'M/-I/-L	Phase' --description '.'
complete -c sox -o 's	Steep' --description '.'
complete -c sox -o 'a	Allow' --description '.'
complete -c sox -s I --description 'or.'
complete -c sox -s w --description 'option can be given to select only the `wet\' si… [See Man Page]'
complete -c sox -o 'a;' --description 'given directly with -b.'
complete -c sox -s y --description 'Sets the Y-axis size in pixels (per channel); t… [See Man Page]'
complete -c sox -s Y --description 'for alternative way of setting spectrogram height.'
complete -c sox -s z --description 'Z-axis (colour) range in dB, default 120.'
complete -c sox -s Z --description 'Sets the upper limit of the Z-axis in dBFS.'
complete -c sox -s W --description 'Window adjustment parameter.'
complete -c sox -s A --description 'Selects an alternative, fixed colour-set.'
complete -c sox -o rms --description 'option will convert all output average values t… [See Man Page]'
complete -c sox -o freq --description 'option calculates the input\'s power spectrum (4… [See Man Page]'
complete -c sox -s j --description 'KEY option selects `just intonation\', where KEY… [See Man Page]'
complete -c sox -s g --description 'Allowed gap (in seconds) between quieter/shorte… [See Man Page]'
complete -c sox -s H --description '`Brick-wall\' frequency of high-pass lifter used… [See Man Page]'
complete -c sox -s 3 -s 4 --description 'the left, right, front, back channel(s) or spec… [See Man Page]'

