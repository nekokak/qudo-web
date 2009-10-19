use Kamui;
use Qudo::Web::Container;
use Path::Class;
use HTML::Entities;
use Encode;
use URI::Escape;

my $home = container('home');

return +{
    view => {
        tt   => +{
            path    => $home->file('assets/tmpl')->stringify,
            options => '',
            filters => +{
                html_unescape => sub {
                    HTML::Entities::decode_entities(shift);
                },
                uri => sub{
                    Encode::is_utf8( $_[0] )
                        ? URI::Escape::uri_escape_utf8($_[0])
                        : URI::Escape::uri_escape($_[0]);
                },
            },
        },
    },
    validator_message => +{
        param => +{
        },
        function => +{
            not_null => '[_1]が空です',
        },
        message => +{
        },
    },
};

