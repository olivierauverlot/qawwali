#!/usr/bin/env perl

use strict;
use warnings;
use FindBin;
use lib "$FindBin::Bin/../lib";


# use this block if you don't need middleware, and only have a single target Dancer app to run here
use Qawwali::App;

Qawwali::App->to_app;

=begin comment
# use this block if you want to include middleware such as Plack::Middleware::Deflater

use Qawwali::App;
use Plack::Builder;

builder {
    enable 'Deflater';
    Qawwali::App->to_app;
}

=end comment

=cut

=begin comment
# use this block if you want to mount several applications on different path

use Qawwali::App;
use Qawwali::App_admin;

use Plack::Builder;

builder {
    mount '/'      => Qawwali::App->to_app;
    mount '/admin'      => Qawwali::App_admin->to_app;
}

=end comment

=cut

