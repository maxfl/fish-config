type -f colordiff >/dev/null; or exit
function svndiff --description 'Diff svn contents'
	svn diff --diff-cmd diff -x -uwB $argv | colordiff
end
