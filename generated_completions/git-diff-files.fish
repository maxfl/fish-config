# git-diff-files
# Autogenerated from man page /usr/share/man/man1/git-diff-files.1.gz
# using Deroffing man parser
complete -c git-diff-files -s p -s u -l patch --description 'Generate patch (see section on generating patches).'
complete -c git-diff-files -o 'U<n>' -l unified --description 'Generate diffs with <n> lines of context instea… [See Man Page]'
complete -c git-diff-files -l raw --description 'Generate the raw format.  This is the default.'
complete -c git-diff-files -l patch-with-raw --description 'Synonym for -p --raw.'
complete -c git-diff-files -l minimal --description 'Spend extra time to make sure the smallest poss… [See Man Page]'
complete -c git-diff-files -l patience --description 'Generate a diff using the "patience diff" algorithm.'
complete -c git-diff-files -l histogram --description 'Generate a diff using the "histogram diff" algorithm.'
complete -c git-diff-files -l 'stat[' --description 'Generate a diffstat.'
complete -c git-diff-files -l numstat --description 'Similar to --stat, but shows number of added an… [See Man Page]'
complete -c git-diff-files -l shortstat --description 'Output only the last line of the --stat format … [See Man Page]'
complete -c git-diff-files -l summary --description 'Output a condensed summary of extended header i… [See Man Page]'
complete -c git-diff-files -l patch-with-stat --description 'Synonym for -p --stat.'
complete -c git-diff-files -s z --description 'When --raw, --numstat, --name-only or --name-st… [See Man Page]'
complete -c git-diff-files -l name-only --description 'Show only names of changed files.'
complete -c git-diff-files -l name-status --description 'Show only names and status of changed files.'
complete -c git-diff-files -l 'submodule[' --description 'Specify how differences in submodules are shown.'
complete -c git-diff-files -l 'color[' --description 'Show colored diff.'
complete -c git-diff-files -l no-color --description 'Turn off colored diff.  It is the same as --color=never.'
complete -c git-diff-files -l word-diff-regex --description 'Use <regex> to decide what a word is, instead o… [See Man Page]'
complete -c git-diff-files -l 'color-words[' --description 'Equivalent to --word-diff=color plus (if a rege… [See Man Page]'
complete -c git-diff-files -l no-renames --description 'Turn off rename detection, even when the config… [See Man Page]'
complete -c git-diff-files -l check --description 'Warn if changes introduce whitespace errors.'
complete -c git-diff-files -l full-index --description 'Instead of the first handful of characters, sho… [See Man Page]'
complete -c git-diff-files -l binary --description 'In addition to --full-index, output a binary di… [See Man Page]'
complete -c git-diff-files -l 'abbrev[' --description 'Instead of showing the full 40-byte hexadecimal… [See Man Page]'
complete -c git-diff-files -o 'B[<n>][/<m>]' -l 'break-rewrites[' --description 'Break complete rewrite changes into pairs of delete and create.'
complete -c git-diff-files -o 'M[<n>]' -l 'find-renames[' --description 'Detect renames.'
complete -c git-diff-files -o 'C[<n>]' -l 'find-copies[' --description 'Detect copies as well as renames.'
complete -c git-diff-files -l find-copies-harder --description 'For performance reasons, by default, -C option … [See Man Page]'
complete -c git-diff-files -s D -l irreversible-delete --description 'Omit the preimage for deletes, i. e.'
complete -c git-diff-files -o 'l<num>' --description 'The -M and -C options require O(n^2) processing… [See Man Page]'
complete -c git-diff-files -l diff-filter --description 'Select only files that are Added (A), Copied (C… [See Man Page]'
complete -c git-diff-files -o 'S<string>' --description 'Look for differences that introduce or remove a… [See Man Page]'
complete -c git-diff-files -o 'G<regex>' --description 'Look for differences whose added or removed lin… [See Man Page]'
complete -c git-diff-files -l pickaxe-all --description 'When -S or -G finds a change, show all the chan… [See Man Page]'
complete -c git-diff-files -l pickaxe-regex --description 'Make the <string> not a plain string but an ext… [See Man Page]'
complete -c git-diff-files -o 'O<orderfile>' --description 'Output the patch in the order specified in the … [See Man Page]'
complete -c git-diff-files -s R --description 'Swap two inputs; that is, show differences from… [See Man Page]'
complete -c git-diff-files -l 'relative[' --description 'When run from a subdirectory of the project, it… [See Man Page]'
complete -c git-diff-files -s a -l text --description 'Treat all files as text.'
complete -c git-diff-files -l ignore-space-at-eol --description 'Ignore changes in whitespace at EOL.'
complete -c git-diff-files -s b -l ignore-space-change --description 'Ignore changes in amount of whitespace.'
complete -c git-diff-files -s w -l ignore-all-space --description 'Ignore whitespace when comparing lines.'
complete -c git-diff-files -l inter-hunk-context --description 'Show the context between diff hunks, up to the … [See Man Page]'
complete -c git-diff-files -s W -l function-context --description 'Show whole surrounding functions of changes.'
complete -c git-diff-files -l exit-code --description 'Make the program exit with codes similar to diff(1).'
complete -c git-diff-files -l quiet --description 'Disable all output of the program.  Implies --exit-code.'
complete -c git-diff-files -l ext-diff --description 'Allow an external diff helper to be executed.'
complete -c git-diff-files -l no-ext-diff --description 'Disallow external diff drivers.'
complete -c git-diff-files -l textconv -l no-textconv --description 'Allow (or disallow) external text conversion fi… [See Man Page]'
complete -c git-diff-files -l 'ignore-submodules[' --description 'Ignore changes to submodules in the diff generation.'
complete -c git-diff-files -l src-prefix --description 'Show the given source prefix instead of "a/".'
complete -c git-diff-files -l dst-prefix --description 'Show the given destination prefix instead of "b/".'
complete -c git-diff-files -l no-prefix --description 'Do not show any source or destination prefix.'
complete -c git-diff-files -s 1 -l base -s 2 -l ours -s 3 -l theirs -s 0 --description 'Diff against the "base" version, "our branch" o… [See Man Page]'
complete -c git-diff-files -s c -l cc --description 'This compares stage 2 (our branch), stage 3 (th… [See Man Page]'
complete -c git-diff-files -s q --description 'Remain silent even on nonexistent files.'
complete -c git-diff-files -o 'p.' --description '.'
complete -c git-diff-files -l 'raw.' --description '.'
complete -c git-diff-files -l stat-graph-width --description '(affects all commands generating a stat graph) … [See Man Page]'
complete -c git-diff-files -l stat-width --description '.'
complete -c git-diff-files -l stat-name-width --description 'and.'
complete -c git-diff-files -l stat-count --description '.'
complete -c git-diff-files -l stat --description '.'
complete -c git-diff-files -l 'dirstat[' --description '.'
complete -c git-diff-files -l dirstat --description 'can be customized by passing it a comma separat… [See Man Page]'
complete -c git-diff-files -l '*stat' --description 'options.  files.'
complete -c git-diff-files -l 'stat.' --description '.'
complete -c git-diff-files -l submodule --description 'or.'
complete -c git-diff-files -l color --description '.'
complete -c git-diff-files -l 'word-diff[' --description '.'
complete -c git-diff-files -l 'color.' --description 'plain.'
complete -c git-diff-files -l word-diff --description 'unless it was already enabled.'
complete -c git-diff-files -l abbrev --description '.'
complete -c git-diff-files -o 'B/70%' --description 'specifies that less than 30% of the original sh… [See Man Page]'
complete -c git-diff-files -o 'B20%' --description 'specifies that a change with addition and delet… [See Man Page]'
complete -c git-diff-files -o 'M90%' --description 'means git should consider a delete/add pair to … [See Man Page]'
complete -c git-diff-files -o M5 --description 'becomes 0. 5, and is thus the same as.'
complete -c git-diff-files -o 'M50%.' --description '.'
complete -c git-diff-files -o M05 --description 'is the same as.'
complete -c git-diff-files -o 'M5%.' --description '.'
complete -c git-diff-files -o 'M100%.' --description '.'
complete -c git-diff-files -l 'find-copies-harder.' --description 'n is specified, it has the same meaning as for.'
complete -c git-diff-files -o 'M<n>.' --description '.'
complete -c git-diff-files -s C --description 'option finds copies only if the original file o… [See Man Page]'
complete -c git-diff-files -s B --description '.'
complete -c git-diff-files -s M --description 'and.'
complete -c git-diff-files -s S --description 'or.'
complete -c git-diff-files -s G --description 'finds a change, show all the changes in that ch… [See Man Page]'
complete -c git-diff-files -l 'exit-code.' --description '.'
complete -c git-diff-files -l - --description '+++ b/describe.'

