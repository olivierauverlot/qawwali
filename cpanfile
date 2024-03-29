requires "Dancer2" => "0.208000";
requires "DBD::SQLite" => "0";
requires "Template" => "0";

recommends "YAML"             => "0";
recommends "URL::Encode::XS"  => "0";
recommends "CGI::Deurl::XS"   => "0";
recommends "HTTP::Parser::XS" => "0";

on "configure" => sub { };

on "build" => sub { };

on "test" => sub {
    requires "Test::More"            => "0";
    requires "HTTP::Request::Common" => "0";
};

on "runtime" => sub { };

on "develop" => sub { };



