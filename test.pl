# $Id: test.pl,v 1.2 2001/04/02 01:12:52 karl Exp $
use HTTP::QuickBase;

my $qdb = HTTP::QuickBase->new();
$username="depositor";
$password="Password";

$res = $qdb->authenticate("$username","$password");

$dbName="QuickBase API FAQ";

$dbid = $qdb->getIDbyName($dbName);

if ($dbid eq "6mztyxu8")
   {
   print "Congratulations QuickBase.pm has been successfully installed!\n";
   exit(0);
   }
else
	{
	die("QuickBase.pm is not properly installed. 
		Often this results because SSL support (Crypt:SSLeay) has not been installed for LWP. " . $qdb->errortext);
	}

