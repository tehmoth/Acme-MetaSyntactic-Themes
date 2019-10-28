package Acme::MetaSyntactic::tld;
use strict;
use Acme::MetaSyntactic::MultiList;
our @ISA = qw( Acme::MetaSyntactic::MultiList );
our $VERSION = '1.011';
__PACKAGE__->init();

our %Remote = (
    source  => 'http://www.iana.org/domains/root/db/',
    extract => sub {
        ( my $type = $_[1]) =~ y/_/-/;
        local $/;
        my %type = $_[0] =~ m{<td>\s*<span class="domain tld"><a href="/domains/root/db/(\w+).html">.\w+</a></span></td>\s+<td>([^<]+)</td>}g;
        return grep $type{$_} eq $type, keys %type;
    },
);

1;

=head1 NAME

Acme::MetaSyntactic::tld - The Top-Level Domain theme

=head1 DESCRIPTION

The list of top-level domainnames.

The source for the list is
L<http://www.iana.org/domains/root/db/>.

Note that this list contains only the ASCII top-level domains, and not the
internationalized ones.

=head1 CONTRIBUTORS

Scott Lanning, Philippe Bruhat (BooK).

=head1 CHANGES

=over 4

=item *

2019-10-28 - v1.011

Updated from the source web site in Acme-MetaSyntactic-Themes version 1.054.

=item *

2019-07-29 - v1.010

Updated from the source web site in Acme-MetaSyntactic-Themes version 1.053.

=item *

2015-08-10 - v1.009

Updated from the source web site in Acme-MetaSyntactic-Themes version 1.047.

=item *

2015-06-08 - v1.008

Updated from the source web site in Acme-MetaSyntactic-Themes version 1.046.

=item *

2015-02-02 - v1.007

Updated from the source web site in Acme-MetaSyntactic-Themes version 1.045.

=item *

2015-01-05 - v1.006

Updated from the source web site in Acme-MetaSyntactic-Themes version 1.044.

=item *

2014-10-13 - v1.005

Updated from the source web site in Acme-MetaSyntactic-Themes version 1.043.

=item *

2014-09-15 - v1.004

Updated from the source web site in Acme-MetaSyntactic-Themes version 1.042.

=item *

2014-08-18 - v1.003

Addition of 338 (!) generic top-level domain names
in Acme-MetaSyntactic-Themes version 1.041.

=item *

2012-08-27 - v1.002

Addition of the C<.post> top-level domain
in Acme-MetaSyntactic-Themes version 1.016.

=item *

2012-07-31 - v1.001

Updated the source URL, and updated the data from the source web site
in Acme-MetaSyntactic-Themes version 1.012 (published one day late).

=item *

2012-05-07 - v1.000

Made updatable, and
received its own version number in Acme-MetaSyntactic-Themes version 1.000.

=item *

2005-01-24

Introduced in Acme-MetaSyntactic version 0.06.

=item *

Idea by Scott Lanning (who suggested ISO 3166 country codes).

=back

=head1 SEE ALSO

L<Acme::MetaSyntactic>, L<Acme::MetaSyntactic::List>.

=cut

__DATA__
# names country_code
ac ad ae af ag ai al am an ao aq ar as at au aw ax az ba bb bd be bf bg
bh bi bj bl bm bn bo bq br bs bt bv bw by bz ca cc cd cf cg ch ci ck cl
cm cn co cr cu cv cw cx cy cz de dj dk dm do dz ec ee eg eh er es et eu
fi fj fk fm fo fr ga gb gd ge gf gg gh gi gl gm gn gp gq gr gs gt gu gw
gy hk hm hn hr ht hu id ie il im in io iq ir is it je jm jo jp ke kg kh
ki km kn kp kr kw ky kz la lb lc li lk lr ls lt lu lv ly ma mc md me mf
mg mh mk ml mm mn mo mp mq mr ms mt mu mv mw mx my mz na nc ne nf ng ni
nl no np nr nu nz om pa pe pf pg ph pk pl pm pn pr ps pt pw py qa re ro
rs ru rw sa sb sc sd se sg sh si sj sk sl sm sn so sr ss st su sv sx sy
sz tc td tf tg th tj tk tl tm tn to tp tr tt tv tw tz ua ug uk um us uy
uz va vc ve vg vi vn vu wf ws ye yt za zm zw
# names generic
com info net org
aaa aarp abarth abb abbott abbvie abc able abogado abudhabi academy
accenture accountant accountants aco active actor adac ads adult aeg aetna
afamilycompany afl africa agakhan agency aig aigo airbus airforce airtel
akdn alfaromeo alibaba alipay allfinanz allstate ally alsace alstom
americanexpress americanfamily amex amfam amica amsterdam analytics
android anquan anz aol apartments app apple aquarelle arab aramco archi
army art arte asda associates athleta attorney auction audi audible
audio auspost author auto autos avianca aws axa azure
baby baidu banamex bananarepublic band bank bar barcelona barclaycard
barclays barefoot bargains baseball basketball bauhaus bayern bbc bbt
bbva bcg bcn beats beauty beer bentley berlin best bestbuy bet bharti
bible bid bike bing bingo bio black blackfriday blanco blockbuster blog
bloomberg blue bms bmw bnl bnpparibas boats boehringer bofa bom bond
boo book booking boots bosch bostik boston bot boutique box bradesco
bridgestone broadway broker brother brussels budapest bugatti build
builders business buy buzz bzh
cab cafe cal call calvinklein cam camera camp cancerresearch canon
capetown capital capitalone car caravan cards care career careers
cars cartier casa case caseih cash casino catering catholic cba cbn
cbre cbs ceb center ceo cern cfa cfd chanel channel charity chase chat
cheap chintai chloe christmas chrome chrysler church cipriani circle
cisco citadel citi citic city cityeats claims cleaning click clinic
clinique clothing cloud club clubmed coach codes coffee college cologne
comcast commbank community company compare computer comsec condos
construction consulting contact contractors cooking cookingchannel cool
corsica country coupon coupons courses cpa credit creditcard creditunion
cricket crown crs cruise cruises csc cuisinella cymru cyou
dabur dad dance data date dating datsun day dclk dds deal dealer deals
degree delivery dell deloitte delta democrat dental dentist desi design
dev dhl diamonds diet digital direct directory discount discover dish
diy dnp docs doctor dodge dog doha domains doosan dot download drive
dtv dubai duck dunlop duns dupont durban dvag dvr
earth eat eco edeka education email emerck energy engineer engineering
enterprises epost epson equipment ericsson erni esq estate esurance
etisalat eurovision eus events everbank exchange expert exposed express
extraspace
fage fail fairwinds faith family fan fans farm farmers fashion fast fedex
feedback ferrari ferrero fiat fidelity fido film final finance financial
fire firestone firmdale fish fishing fit fitness flickr flights flir
florist flowers flsmidth fly foo food foodnetwork football ford forex
forsale forum foundation fox free fresenius frl frogans frontdoor frontier
ftr fujitsu fujixerox fun fund furniture futbol fyi
gal gallery gallo gallup game games gap garden gay gbiz gdn gea gent genting
george ggee gift gifts gives giving glade glass gle global globo gmail
gmbh gmo gmx godaddy gold goldpoint golf goo goodhands goodyear goog
google gop got grainger graphics gratis green gripe grocery group guardian
gucci guge guide guitars guru
hair hamburg hangout haus hbo hdfc hdfcbank health healthcare help
helsinki here hermes hgtv hiphop hisamitsu hitachi hiv hkt hockey
holdings holiday homedepot homegoods homes homesense honda honeywell
horse hospital host hosting hot hoteles hotels hotmail house how hsbc
htc hughes hyatt hyundai
ibm icbc ice icu ieee ifm iinet ikano imamat imdb immo immobilien
inc industries infiniti info ing ink institute insurance insure intel
international intuit investments ipiranga irish iselect ismaili ist
istanbul itau itv iveco iwc
jaguar java jcb jcp jeep jetzt jewelry jio jlc jll jmp jnj joburg jot
joy jpmorgan jprs juegos juniper
kaufen kddi kerryhotels kerrylogistics kerryproperties kfh kia kim kinder
kindle kitchen kiwi koeln komatsu kosher kpmg kpn krd kred kuokgroup kyoto
lacaixa ladbrokes lamborghini lamer lancaster lancia lancome land
landrover lanxess lasalle lat latino latrobe law lawyer lds lease leclerc
lefrak legal lego lexus lgbt liaison lidl life lifeinsurance lifestyle
lighting like lilly limited limo lincoln linde link lipsy live living
lixil llc loan loans locker locus loft lol london lotte lotto love lpl
lplfinancial ltd ltda lundbeck lupin luxe luxury
macys madrid maif maison makeup man management mango map market marketing
markets marriott marshalls maserati mattel mba mcd mcdonalds mckinsey med
media meet melbourne meme memorial men menu meo merckmsd metlife miami
microsoft mini mint mit mitsubishi mlb mls mma mobi mobile mobily moda
moe moi mom monash money monster montblanc mopar mormon mortgage moscow
moto motorcycles mov movie movistar msd mtn mtpc mtr mutual mutuelle
nab nadex nagoya nationwide natura navy nba nec netbank netflix
network neustar new newholland news next nextdirect nexus nfl ngo nhk
nico nike nikon ninja nissan nissay nokia northwesternmutual norton now
nowruz nowtv nra nrw ntt nyc
obi observer off office okinawa olayan olayangroup oldnavy ollo omega one
ong onl online onyourside ooo open oracle orange organic orientexpress
origins osaka otsuka ott ovh
page pamperedchef panasonic panerai paris pars partners parts party
passagens pay pccw pet pfizer pharmacy phd philips phone photo photography
photos physio piaget pics pictet pictures pid pin ping pink pioneer
pizza place play playstation plumbing plus pnc pohl poker politie porn
pramerica praxi press prime prod productions prof progressive promo
properties property protection pru prudential pub pwc
qpon quebec quest qvc
racing radio raid read realestate realtor realty recipes red redstone
redumbrella rehab reise reisen reit reliance ren rent rentals repair
report republican rest restaurant review reviews rexroth rich richardli
ricoh rightathome ril rio rip rmit rocher rocks rodeo rogers room rsvp
rugby ruhr run rwe ryukyu
saarland safe safety sakura sale salon samsclub samsung sandvik
sandvikcoromant sanofi sap sapo sarl sas save saxo sbi sbs sca scb
schaeffler schmidt scholarships school schule schwarz science scjohnson
scor scot search seat secure security seek select sener services ses
seven sew sex sexy sfr shangrila sharp shaw shell shia shiksha shoes shop
shopping shouji show showtime shriram silk sina singles site ski skin
sky skype sling smart smile sncf soccer social softbank software sohu
solar solutions song sony soy space spiegel sport spot spreadbetting srl
srt stada staples star starhub statebank statefarm statoil stc stcgroup
stockholm storage store stream studio study style sucks supplies supply
support surf surgery suzuki swatch swiftcover swiss sydney symantec
systems
tab taipei talk taobao target tatamotors tatar tattoo tax taxi tci tdk
team tech technology telecity telefonica temasek tennis teva thd theater
theatre tiaa tickets tienda tiffany tips tires tirol tjmaxx tjx tkmaxx
tmall today tokyo tools top toray toshiba total tours town toyota toys
trade trading training travelchannel travelers travelersinsurance trust
trv tube tui tunes tushu tvs
ubank ubs uconnect unicom university uno uol ups
vacations vana vanguard vegas ventures verisign versicherung vet viajes
video vig viking villas vin vip virgin visa vision vista vistaprint viva
vivo vlaanderen vodka volkswagen volvo vote voting voto voyage vuelos
wales walmart walter wang wanggou warman watch watches weather
weatherchannel webcam weber website wed wedding weibo weir whoswho wien
wiki williamhill win windows wine winners wme wolterskluwer woodside
work works world wow wtc wtf
xbox xerox xfinity xihuan xin xperia xyz
yachts yahoo yamaxun yandex yodobashi yoga yokohama you youtube yun
zappos zara zero zip zippo zone zuerich
# names generic_restricted
biz name pro
# names infrastructure
arpa
# names sponsored
aero asia cat coop edu gov int jobs mil museum post tel travel xxx
