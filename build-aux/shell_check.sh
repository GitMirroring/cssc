#! /bin/sh

awk -e '
{
    dir=$1;
    sub("/[^/]*$", "", dir);
    files[dir] = $files[dir] " " $1;
}

END {
    for (dir in files) {
        printf("%s:%s\n", dir, files[dir]);
    }
}
' | {
    IFS=":"
    while read -r dir paths
    do
        (
            IFS=" "
	    # shellcheck disable=SC2086
            cd "${dir}" && shellcheck -f gcc -x -e SC2121,SC2006,SC2119,SC2012 ${paths}
        )
    done
}
