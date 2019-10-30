function .setnuwa --description 'Set NuWa environment' --argument path ver
	if test -d ~/bin/python2
		set -gx PATH ~/bin/python2 $PATH
	end
	set -l dir (command pwd)

	set -q path[1]
	or set path (pwd)
	set -q ver[1]
	or set ver trunk

	cd $path/NuWa-$ver/
	echo source file (pwd)/setup.sh
	source setup.sh

	if not which cmt > /dev/null
		echo 'Can not find cmt!'
		return 1
	end
	cd dybgaudi/DybRelease/cmt
	test -r setup.sh
	or cmt config
	echo source file (pwd)/setup.sh
	source setup.sh

	cd $dir

	#set CMTPROJECTPATH if it's a project here
	test -r ./cmt/project.cmt
	and set CMTPROJECTPATH (pwd) $CMTPROJECTPATH

	#run make in ./cmt folder
	function make -d 'Make in cmt folder'
		make -C cmt $argv
	end

	#override LD_LIB* for vim
	ignoreldlib vim gvim vimpager ssh man

	#reverse PATH
	set -l npath
	for p in $PATH
		set npath $p $npath
	end
	set -gx PATH $npath
	varclear PATH

end
