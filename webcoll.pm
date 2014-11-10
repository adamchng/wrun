package webcoll;

# used to connect to NetCom webservers only
# via backdoor interfaces

@nodes = ();

if ($ENV{WCOLL}) { @main::nodes = split(/,/,$ENV{WCOLL}); }

# choose between columbus and schaumburg
$prefix = $ENV{WPREFIX} ? $ENV{WPREFIX} : '192.168.200.';

if (int(@main::nodes) > 0) {
  	@nodes = @main::nodes;
} else {
 	#@nodes = (qw( 5 6 7 ));
 	@nodes = (qw( 106 107 ));
}

@wcoll = ();

{
  my $x;
  foreach $x (@nodes) {
	push(@wcoll,$prefix.$x);
  }
}

1;
