function alias_if() {
	if [ -x $2 ]; then
		alias $1=$2
	fi
}

alias_if grep rg
alias_if vim nvim
