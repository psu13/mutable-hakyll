use strict;

my $url;

while (<>) {
    if (m/iframe width/) {
        chop;
        $url = $_; $url =~ s/.*src="(.*?)".*/\1/; 
        print <<EOF
> <div class="youtube">
<iframe src="$url"
frameborder="0" allowfullscreen class="video"></iframe>
</div>
EOF
;
    } else { 
        print;
    }
}

