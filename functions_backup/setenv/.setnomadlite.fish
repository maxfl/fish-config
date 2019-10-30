function .setnomadlite --description 'Set NOMADLITE path'
	set -gx NOMADLITE $argv[1]
	set -gx NOMAD_LIBS $NOMADLITE/lib/Linux
	set -gx NOMAD_UTILS $NOMADLITE/src/util/v7r5l/
	set -gx NOMAD_DST $NOMADLITE/src/dst/v7r4l/
	set PATH $PATH $NOMADLITE/src/Rules $NOMADLITE/bin/Linux

    varclear PATH
end
