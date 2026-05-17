#!/usr/bin/env perl

use strict;
use warnings;
use POSIX qw(strftime);

sub clean_tex_value {
  my ($value) = @_;
  $value =~ s/\\/\\textbackslash{}/g;
  $value =~ s/([{}#%&_])/\\$1/g;
  return $value;
}

sub today {
  return strftime('%Y.%m.%d', localtime);
}

sub write_cv_version {
  chomp(my $dirty = `git status --porcelain -- resume.tex README.md build.sh scripts/write-version.pl 2>/dev/null`);
  chomp(my $updated = `git log -1 --date=format-local:'%Y.%m.%d' --pretty=format:%cd -- resume.tex README.md build.sh scripts/write-version.pl 2>/dev/null`);
  $updated = today() if $updated eq '' || $dirty ne '';
  my $version = "v$updated";

  open(my $fh, '>', 'cv-version.tex') or die "Cannot write cv-version.tex: $!";
  print $fh "\\newcommand{\\cvVersion}{", clean_tex_value($version), "}\n";
  close($fh);
}

write_cv_version() unless caller;
1;
