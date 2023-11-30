package Graphics::ColorNamesLite::EN;

# AUTHORITY
# DATE
# DIST
# VERSION

# note: SVG=CSS, WWW=CSS. GrayScale returns coderef.
# CODE: no strict 'refs'; use Data::Dump; my $t = {}; for my $m (qw/CSS Crayola EmergyC HTML IE Mozilla Netscape Pantone PantoneReport VACCC Werner Windows X/) { my $mod = "Graphics::ColorNames::$m"; (my $modpm = "$mod.pm") =~ s!::!/!g; require $modpm; my $t2 = &{"$mod\::NamesRgbTable"}(); die "$m" unless ref $t2 eq "HASH"; for (keys %$t2) { $t->{$_} = sprintf "%06x", $t2->{$_} unless defined $t->{$_} } } print 'our $NAMES_RGB_TABLE = '; dd $t; print ";";

1;
# ABSTRACT: Lots of English color names and equivalent RGB values (lite version)

=head1 DESCRIPTION

This is a merge of various English Graphics::ColorNames::* modules.


=head1 SEE ALSO

C<Graphics::ColorNames::*>
