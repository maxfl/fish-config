function .unsetnomadlite --description 'Unset NOMADLITE path'
    set -q NOMADLITE; or exit 1
	varidel PATH $NOMAD/src/Rules $NOMAD/bin/Linux
    each NOMAD NOMADLITE NOMAD_LIBS NOMAD_UTILS NOMAD_DST -- set -e
end
