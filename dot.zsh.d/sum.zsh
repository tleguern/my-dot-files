# Quick ZSH emulation of sha1sum and md5sum 

function sha1sum {
	echo -n `sha1 $1 | cut -d ' ' -f 4`
	echo ' '$1
}

function sha256sum {
	echo -n `sha256 $1 | cut -d ' ' -f 4`
	echo ' '$1
}

function md5sum {
	echo -n `md5 $1 | cut -d ' ' -f 4`
	echo ' '$1
}
