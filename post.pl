#!/usr/bin/perl

# convert pelican markdown to pandoc markdown

$file = shift;

print "$file\n";

$postFile = lc $file;

$postFile =~ s/ /-/g;

print "$postFile\n";

open(IN,"<$file");

open(OUT,">../../mutable-hakyll/posts/$postFile") || die "output error";

open (NAMES,">>../../mutable-hakyll/redirects") || die "redirects error";

$header = 1;

print OUT "---\n";

while(<IN>) {
    if ($header) {
        chop;
        next if (/Category/);
        if (length($_) == 0) {
            print OUT "---\n\n";
            $header = 0;
        }  else {
            ($name, $value) = split(/:/);
            $name = lc $name;
            print  OUT "$name:$value\n";
        }
    } else {
        print OUT $_;
    }
    
}
