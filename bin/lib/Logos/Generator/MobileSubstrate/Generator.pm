package Logos::Generator::MobileSubstrate::Generator;
use strict;
use parent qw(Logos::Generator::Base::Generator);

sub findPreamble {
	my $self = shift;
	my $aref = shift;
	my @matches = grep(/\s*#\s*include\s*[<"]substrate\.h[">]/, @$aref);
	return @matches > 0;
}

sub preamble {
	my $self = shift;
	return join("\n", ($self->SUPER::preamble(), "#include <substrate.h>"));
}

1;
