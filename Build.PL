#!/usr/bin/perl

use strict;
use warnings;
use Module::Build;

my %options = (
	module_name       => 'App',
	license           => 'perl',
	dist_version_from => 'lib/App.pm',
	dist_author       => 'Gabor Szabo <gabor@szabgab.com>',
	dist_abstract     => 'Toy App',
	configure_requires => {
		'Module::Build'           => 0.42,
	},
	test_requires     => {
		'Test::More'              => 1.302,
	},
	meta_merge        => {
		resources     => {
			repository     => 'https://github.com/szabgab/github-actions-perl-build'
		}
	},
	requires          => {
		'Config::Simple'          => 4.58,
	},
	recommends        => {
		'Parallel::ForkManager'   => 1.02,
	},
	script_files => []
);

my $build = Module::Build->new(%options);
$build->create_build_script;
