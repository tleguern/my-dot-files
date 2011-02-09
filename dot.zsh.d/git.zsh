# Git utils

function git-branch-name () {
	git branch 2> /dev/null | grep '^\*' | sed 's/^\*\ //'
}

function git-scoreboard () {
	git log | grep Author | cut -d ' ' -f1,2 | sort | uniq -c  | sort -r
}
