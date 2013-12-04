function __make_convert_completion --description 'Make convert completion' --argument-names command
	set line ''
	rm $command.fish functions_test.out
    set -l p1_vars_nocomp '"string"' NxN amount angle coefficients count,indexes degrees distance expression factor format:option geometry id index indexes iterations levels low,high matrix matrix operator password point property radius server string threshold value values
    set -l p1_vars "count,*" '"string"' NxN amount angle arguments coefficients color color,color colorspace degrees distance events expression factor filename format format:option geometry id index indexes iterations levels low,high matrix method name operator option password point property radius server string threshold type value values
    set -l p2_vars text geometry kernel parameters value
    set -l done ''
    begin
        eval $command --help 
        man --nh --nj -P cat $command | sed '1,/^DESCR/d; /^\s\+Use any/,$d; /^$/d; /^\s*\(Image\|Miscellaneous\)/d'
    end | grep '^  ' | while read -l a b
		switch $a
		case '-*'
			if test "$line"
				echo $line
			end
			set line $a $b
		case '*'
			set line $line $a $b
			#echo $line
		end
	end | while read -l opt p1 p2 desc
        if contains -- $opt $done
            continue
        else
            set done $opt $done
        end
		switch $p2
		case $p2_vars
		case '*'
			set desc $p2 $desc
			set p2 ''
		end
		switch $p1
		case $p1_vars
		case '*'
			set desc $p1 $desc
			set p1
		end
		set -l dadd ''
		if test $p2
			set dadd " [$p1 $p2]"
		else
			if test $p1
				set dadd " [$p1]"
			end
		end
		set opt (echo $opt | sed 's/-//')
		set -l str complete -c $command -o $opt
		set -l comp
		switch "$p1"
		case ''
		case filename
			set comp -r
			set p1
		case color format
			set comp -xa "'(__fish_complete_convert_options $p1)'"
			set p1
		case method type name option
			switch $opt
			case limit weight colormap map visual
				set comp -x
			case encoding
				set comp -xa "'(__fish_print_encodings)'"
			case orient
				set comp -xa "'($command -list orientation)'"
			case sparce-color
				set comp -xa "'($command -list sparcecolor)'"
			case storage-type
				set comp -xa "'($command -list storage)'"
			case family font
				set comp -xa "'(__fish_complete_convert_options $opt)'"
            case format
                set comp -xa "'(__fish_complete_convert_options $p1)'"
			case '*'
				set comp -xa "'($command -list $opt)'"
			end
			set p1
		case colorspace
			set comp -xa "'($command -list $p1)'"
			set p1
		case arguments
			set comp -xa "'($command -list filter)'"
			set p1
		case events
			set comp -xa "'($command -list debug)'"
			set p1
		case color,color
			set comp -xa "'(__fish_complete_list , \"__fish_complete_convert_options color\")'"
			set p1
		case $p1_vars_nocomp
			set p1
		case '*'
			set comp -x
		end
		switch "$comp[1]"
		case -xa
			echo $comp[2] >> functions_test.out
		end
		set desc (echo $desc | sed 's/\'/\\\\\'/g; s/^\s\+//; s/\(.\)/\u\1/')
		begin
			printf '%-50s %s ' "$str" $p1
			echo -d "'$desc$dadd'" $comp
		end | tee -a $command.fish
	end
	cat functions_test.out | sort -u | sed 's/[\'()]//g' > functions_$command.out
    rm functions_test.out
end
