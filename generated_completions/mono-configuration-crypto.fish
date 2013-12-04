# mono-configuration-crypto
# Autogenerated from man page /usr/share/man/man1/mono-configuration-crypto.1.gz
# using Deroffing man parser
complete -c mono-configuration-crypto -s h -s '?' -l help --description 'Show usage information.'
complete -c mono-configuration-crypto -s v -l verbose --description 'Show verbose information (including exception stacktraces).'
complete -c mono-configuration-crypto -s m -l machine -l global --description 'Use machine (global) store for all the key actions.'
complete -c mono-configuration-crypto -s u -l user -l local --description 'Use local (user) store for all the key actions.'
complete -c mono-configuration-crypto -s l -l list --description 'List all the key container names in the store.'
complete -c mono-configuration-crypto -s c -l create --description 'Creates an RSA public/private key pair.'
complete -c mono-configuration-crypto -s i -l import --description 'Imports key to a container.'
complete -c mono-configuration-crypto -s x -l export --description 'Exports key from a container.'
complete -c mono-configuration-crypto -s r -l remove --description 'Remove a container.'
complete -c mono-configuration-crypto -s f -l file --description 'File name for import or export operations.'
complete -c mono-configuration-crypto -o cf -l config-file --description 'Config file name.'
complete -c mono-configuration-crypto -s n -l name --description 'Container name.'
complete -c mono-configuration-crypto -s s -l size --description 'Key size.'
complete -c mono-configuration-crypto -s p -l path --description 'Application physical path.'
complete -c mono-configuration-crypto -s d -l dec -l decrypt --description 'Decrypt configuration section.'
complete -c mono-configuration-crypto -s e -l enc -l encrypt --description 'Encrypt configuration section.'

