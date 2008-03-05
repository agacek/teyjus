use lib '../lib';
use strict;
use Test::More tests => 9;

my $TJSIM = "../../tjsim";
my $PATH = "-p poplmark-3/";
my $MODULE = "poplmark";
my $code;
my $ans;

############################################
############################################
$code = <<'CODE';
of ((tabs top X\ (tabs X S\ (tabs X Z\ (abs (arrow X S) s\ (abs Z z\ (app s z))))))) ((forall top X21\ (forall X21 X46\ (forall X21 X71\ (arrow (arrow X21 X46) (arrow X71 X46)))))).
CODE
$ans = <<'ANS';
ANS
same_answers( `$TJSIM -b $PATH --solve "$code" $MODULE\n`, $ans,"append");
############################################
############################################
$code = <<'CODE';
of ((abs (forall top A\ (forall A B\ (forall A C\ (arrow (arrow A B) (arrow C A))))) n\ (tabs top X\ (tabs X S\ (tabs X Z\ (abs (arrow X S) s\ (abs Z z\ (app s (app (app (tapp (tapp (tapp n X) S) Z) s) z))))))))) ((arrow (forall top A\ (forall A B\ (forall A C\ (arrow (arrow A B) (arrow C A))))) (forall top X41\ (forall X41 X66\ (forall X41 X91\ (arrow (arrow X41 X66) (arrow X91 X66))))))).
CODE
$ans = <<'ANS';
ANS
same_answers( `$TJSIM -b $PATH --solve "$code" $MODULE\n`, $ans,"append");

############################################
############################################
$code = <<'CODE';
of ((abs (forall top X\ (forall X S\ (forall X Z\ (arrow (arrow X S) (arrow Z S))))) n\ (abs (forall top X\ (forall X S\ (forall X Z\ (arrow (arrow X S) (arrow Z S))))) m\ (tabs top X\ (tabs X S\ (tabs X Z\ (abs (arrow X S) s\ (abs Z z\ (app (app (tapp (tapp (tapp n X) S) S) s) (app (app (tapp (tapp (tapp m X) S) Z) s) z)))))))))) ((arrow (forall top X\ (forall X S\ (forall X Z\ (arrow (arrow X S) (arrow Z S))))) (arrow (forall top X\ (forall X S\ (forall X Z\ (arrow (arrow X S) (arrow Z S))))) (forall top X61\ (forall X61 X86\ (forall X61 X111\ (arrow (arrow X61 X86) (arrow X111 X86)))))))).
CODE
$ans = <<'ANS';
ANS
same_answers( `$TJSIM -b $PATH --solve "$code" $MODULE\n`, $ans,"pi append");

############################################
############################################
$code = <<'CODE';
of ((abs (forall top X\ (forall X S\ (forall X Z\ (arrow (arrow X S) (arrow Z S))))) n\ (abs (forall top X\ (forall X S\ (forall X Z\ (arrow (arrow X S) (arrow Z S))))) m\ (tabs top X\ (tabs X S\ (tabs X Z\ (abs (arrow X S) s\ (app (tapp (tapp (tapp n X) S) Z) (app (tapp (tapp (tapp m X) S) X) s))))))))) ((arrow (forall top X\ (forall X S\ (forall X Z\ (arrow (arrow X S) (arrow Z S))))) (arrow (forall top X\ (forall X S\ (forall X Z\ (arrow (arrow X S) (arrow Z S))))) (forall top X61\ (forall X61 X86\ (forall X61 X111\ (arrow (arrow X61 X86) (arrow X111 X86)))))))).
CODE
$ans = <<'ANS';
ANS
same_answers( `$TJSIM -b $PATH --solve "$code" $MODULE\n`, $ans,"append");

############################################
############################################
$code = <<'CODE';
of ((tabs top B301808\ (tabs B301808 B301831\ (tabs B301808 B301854\ (abs (arrow B301808 B301831) b301865\ (app (tapp (tapp (tapp (tabs top B301989\ (tabs B301989 B302012\ (tabs B301989 B302035\ (abs (arrow B301989 B302012) b302046\ (app (tapp (tapp (tapp (tabs top B302170\ (tabs B302170 B302193\ (tabs B302170 B302216\ (abs (arrow B302170 B302193) b302227\ (app (tapp (tapp (tapp (tabs top B302351\ (tabs B302351 B302374\ (tabs B302351 B302397\ (abs (arrow B302351 B302374) b302408\ (app (tapp (tapp (tapp (tabs top B302532\ (tabs B302532 B302555\ (tabs B302532 B302578\ (abs (arrow B302532 B302555) b302589\ (app (tapp (tapp (tapp (tabs top B302713\ (tabs B302713 B302736\ (tabs B302713 B302759\ (abs (arrow B302713 B302736) b302770\ (app (tapp (tapp (tapp (tabs top B302894\ (tabs B302894 B302917\ (tabs B302894 B302940\ (abs (arrow B302894 B302917) b302951\ (app (tapp (tapp (tapp (tabs top B303075\ (tabs B303075 B303098\ (tabs B303075 B303121\ (abs (arrow B303075 B303098) b303132\ (app (tapp (tapp (tapp (tabs top B303256\ (tabs B303256 B303279\ (tabs B303256 B303302\ (abs (arrow B303256 B303279) b303313\ (abs B303302 b303324\ (app b303313 b303324)))))) B303075) B303098) B303121) (app (tapp (tapp (tapp (tabs top B303739\ (tabs B303739 B303762\ (tabs B303739 B303785\ (abs (arrow B303739 B303762) b303796\ (abs B303785 b303807\ (app (app (tapp (tapp (tapp (tabs top B303948\ (tabs B303948 B303971\ (tabs B303948 B303994\ (abs (arrow B303948 B303971) b304005\ (abs B303994 b304016\ (app b304005 b304016)))))) B303739) B303762) B303762) b303796) (app (app (tapp (tapp (tapp (tabs top B304619\ (tabs B304619 B304642\ (tabs B304619 B304665\ (abs (arrow B304619 B304642) b304676\ (abs B304665 b304687\ (app b304676 b304687)))))) B303739) B303762) B303785) b303796) b303807))))))) B303075) B303098) B303075) b303132)))))) B302894) B302917) B302940) (app (tapp (tapp (tapp (tabs top B305539\ (tabs B305539 B305562\ (tabs B305539 B305585\ (abs (arrow B305539 B305562) b305596\ (abs B305585 b305607\ (app (app (tapp (tapp (tapp (tabs top B305748\ (tabs B305748 B305771\ (tabs B305748 B305794\ (abs (arrow B305748 B305771) b305805\ (abs B305794 b305816\ (app (app (tapp (tapp (tapp (tabs top B305957\ (tabs B305957 B305980\ (tabs B305957 B306003\ (abs (arrow B305957 B305980) b306014\ (abs B306003 b306025\ (app b306014 b306025)))))) B305748) B305771) B305771) b305805) (app (app (tapp (tapp (tapp (tabs top B306637\ (tabs B306637 B306660\ (tabs B306637 B306683\ (abs (arrow B306637 B306660) b306694\ (abs B306683 b306705\ (app b306694 b306705)))))) B305748) B305771) B305794) b305805) b305816))))))) B305539) B305562) B305562) b305596) (app (app (tapp (tapp (tapp (tabs top B307589\ (tabs B307589 B307612\ (tabs B307589 B307635\ (abs (arrow B307589 B307612) b307646\ (abs B307635 b307657\ (app b307646 b307657)))))) B305539) B305562) B305585) b305596) b305607))))))) B302894) B302917) B302894) b302951)))))) B302713) B302736) B302759) (app (tapp (tapp (tapp (tabs top B308449\ (tabs B308449 B308472\ (tabs B308449 B308495\ (abs (arrow B308449 B308472) b308506\ (abs B308495 b308517\ (app (app (tapp (tapp (tapp (tabs top B308658\ (tabs B308658 B308681\ (tabs B308658 B308704\ (abs (arrow B308658 B308681) b308715\ (abs B308704 b308726\ (app (app (tapp (tapp (tapp (tabs top B308867\ (tabs B308867 B308890\ (tabs B308867 B308913\ (abs (arrow B308867 B308890) b308924\ (abs B308913 b308935\ (app (app (tapp (tapp (tapp (tabs top B309076\ (tabs B309076 B309099\ (tabs B309076 B309122\ (abs (arrow B309076 B309099) b309133\ (abs B309122 b309144\ (app b309133 b309144)))))) B308867) B308890) B308890) b308924) (app (app (tapp (tapp (tapp (tabs top B309765\ (tabs B309765 B309788\ (tabs B309765 B309811\ (abs (arrow B309765 B309788) b309822\ (abs B309811 b309833\ (app b309822 b309833)))))) B308867) B308890) B308913) b308924) b308935))))))) B308658) B308681) B308681) b308715) (app (app (tapp (tapp (tapp (tabs top B310732\ (tabs B310732 B310755\ (tabs B310732 B310778\ (abs (arrow B310732 B310755) b310789\ (abs B310778 b310800\ (app b310789 b310800)))))) B308658) B308681) B308704) b308715) b308726))))))) B308449) B308472) B308472) b308506) (app (app (tapp (tapp (tapp (tabs top B311624\ (tabs B311624 B311647\ (tabs B311624 B311670\ (abs (arrow B311624 B311647) b311681\ (abs B311670 b311692\ (app b311681 b311692)))))) B308449) B308472) B308495) b308506) b308517))))))) B302713) B302736) B302713) b302770)))))) B302532) B302555) B302578) (app (tapp (tapp (tapp (tabs top B312424\ (tabs B312424 B312447\ (tabs B312424 B312470\ (abs (arrow B312424 B312447) b312481\ (abs B312470 b312492\ (app (app (tapp (tapp (tapp (tabs top B312633\ (tabs B312633 B312656\ (tabs B312633 B312679\ (abs (arrow B312633 B312656) b312690\ (abs B312679 b312701\ (app (app (tapp (tapp (tapp (tabs top B312842\ (tabs B312842 B312865\ (tabs B312842 B312888\ (abs (arrow B312842 B312865) b312899\ (abs B312888 b312910\ (app (app (tapp (tapp (tapp (tabs top B313051\ (tabs B313051 B313074\ (tabs B313051 B313097\ (abs (arrow B313051 B313074) b313108\ (abs B313097 b313119\ (app (app (tapp (tapp (tapp (tabs top B313260\ (tabs B313260 B313283\ (tabs B313260 B313306\ (abs (arrow B313260 B313283) b313317\ (abs B313306 b313328\ (app b313317 b313328)))))) B313051) B313074) B313074) b313108) (app (app (tapp (tapp (tapp (tabs top B313958\ (tabs B313958 B313981\ (tabs B313958 B314004\ (abs (arrow B313958 B313981) b314015\ (abs B314004 b314026\ (app b314015 b314026)))))) B313051) B313074) B313097) b313108) b313119))))))) B312842) B312865) B312865) b312899) (app (app (tapp (tapp (tapp (tabs top B314940\ (tabs B314940 B314963\ (tabs B314940 B314986\ (abs (arrow B314940 B314963) b314997\ (abs B314986 b315008\ (app b314997 b315008)))))) B312842) B312865) B312888) b312899) b312910))))))) B312633) B312656) B312656) b312690) (app (app (tapp (tapp (tapp (tabs top B315847\ (tabs B315847 B315870\ (tabs B315847 B315893\ (abs (arrow B315847 B315870) b315904\ (abs B315893 b315915\ (app b315904 b315915)))))) B312633) B312656) B312679) b312690) b312701))))))) B312424) B312447) B312447) b312481) (app (app (tapp (tapp (tapp (tabs top B316679\ (tabs B316679 B316702\ (tabs B316679 B316725\ (abs (arrow B316679 B316702) b316736\ (abs B316725 b316747\ (app b316736 b316747)))))) B312424) B312447) B312470) b312481) b312492))))))) B302532) B302555) B302532) b302589)))))) B302351) B302374) B302397) (app (tapp (tapp (tapp (tabs top B317419\ (tabs B317419 B317442\ (tabs B317419 B317465\ (abs (arrow B317419 B317442) b317476\ (abs B317465 b317487\ (app (app (tapp (tapp (tapp (tabs top B317628\ (tabs B317628 B317651\ (tabs B317628 B317674\ (abs (arrow B317628 B317651) b317685\ (abs B317674 b317696\ (app (app (tapp (tapp (tapp (tabs top B317837\ (tabs B317837 B317860\ (tabs B317837 B317883\ (abs (arrow B317837 B317860) b317894\ (abs B317883 b317905\ (app (app (tapp (tapp (tapp (tabs top B318046\ (tabs B318046 B318069\ (tabs B318046 B318092\ (abs (arrow B318046 B318069) b318103\ (abs B318092 b318114\ (app (app (tapp (tapp (tapp (tabs top B318255\ (tabs B318255 B318278\ (tabs B318255 B318301\ (abs (arrow B318255 B318278) b318312\ (abs B318301 b318323\ (app (app (tapp (tapp (tapp (tabs top B318464\ (tabs B318464 B318487\ (tabs B318464 B318510\ (abs (arrow B318464 B318487) b318521\ (abs B318510 b318532\ (app b318521 b318532)))))) B318255) B318278) B318278) b318312) (app (app (tapp (tapp (tapp (tabs top B319171\ (tabs B319171 B319194\ (tabs B319171 B319217\ (abs (arrow B319171 B319194) b319228\ (abs B319217 b319239\ (app b319228 b319239)))))) B318255) B318278) B318301) b318312) b318323))))))) B318046) B318069) B318069) b318103) (app (app (tapp (tapp (tapp (tabs top B320168\ (tabs B320168 B320191\ (tabs B320168 B320214\ (abs (arrow B320168 B320191) b320225\ (abs B320214 b320236\ (app b320225 b320236)))))) B318046) B318069) B318092) b318103) b318114))))))) B317837) B317860) B317860) b317894) (app (app (tapp (tapp (tapp (tabs top B321090\ (tabs B321090 B321113\ (tabs B321090 B321136\ (abs (arrow B321090 B321113) b321147\ (abs B321136 b321158\ (app b321147 b321158)))))) B317837) B317860) B317883) b317894) b317905))))))) B317628) B317651) B317651) b317685) (app (app (tapp (tapp (tapp (tabs top B321937\ (tabs B321937 B321960\ (tabs B321937 B321983\ (abs (arrow B321937 B321960) b321994\ (abs B321983 b322005\ (app b321994 b322005)))))) B317628) B317651) B317674) b317685) b317696))))))) B317419) B317442) B317442) b317476) (app (app (tapp (tapp (tapp (tabs top B322709\ (tabs B322709 B322732\ (tabs B322709 B322755\ (abs (arrow B322709 B322732) b322766\ (abs B322755 b322777\ (app b322766 b322777)))))) B317419) B317442) B317465) b317476) b317487))))))) B302351) B302374) B302351) b302408)))))) B302170) B302193) B302216) (app (tapp (tapp (tapp (tabs top B323389\ (tabs B323389 B323412\ (tabs B323389 B323435\ (abs (arrow B323389 B323412) b323446\ (abs B323435 b323457\ (app (app (tapp (tapp (tapp (tabs top B323598\ (tabs B323598 B323621\ (tabs B323598 B323644\ (abs (arrow B323598 B323621) b323655\ (abs B323644 b323666\ (app (app (tapp (tapp (tapp (tabs top B323807\ (tabs B323807 B323830\ (tabs B323807 B323853\ (abs (arrow B323807 B323830) b323864\ (abs B323853 b323875\ (app (app (tapp (tapp (tapp (tabs top B324016\ (tabs B324016 B324039\ (tabs B324016 B324062\ (abs (arrow B324016 B324039) b324073\ (abs B324062 b324084\ (app (app (tapp (tapp (tapp (tabs top B324225\ (tabs B324225 B324248\ (tabs B324225 B324271\ (abs (arrow B324225 B324248) b324282\ (abs B324271 b324293\ (app (app (tapp (tapp (tapp (tabs top B324434\ (tabs B324434 B324457\ (tabs B324434 B324480\ (abs (arrow B324434 B324457) b324491\ (abs B324480 b324502\ (app (app (tapp (tapp (tapp (tabs top B324643\ (tabs B324643 B324666\ (tabs B324643 B324689\ (abs (arrow B324643 B324666) b324700\ (abs B324689 b324711\ (app b324700 b324711)))))) B324434) B324457) B324457) b324491) (app (app (tapp (tapp (tapp (tabs top B325359\ (tabs B325359 B325382\ (tabs B325359 B325405\ (abs (arrow B325359 B325382) b325416\ (abs B325405 b325427\ (app b325416 b325427)))))) B324434) B324457) B324480) b324491) b324502))))))) B324225) B324248) B324248) b324282) (app (app (tapp (tapp (tapp (tabs top B326371\ (tabs B326371 B326394\ (tabs B326371 B326417\ (abs (arrow B326371 B326394) b326428\ (abs B326417 b326439\ (app b326428 b326439)))))) B324225) B324248) B324271) b324282) b324293))))))) B324016) B324039) B324039) b324073) (app (app (tapp (tapp (tapp (tabs top B327308\ (tabs B327308 B327331\ (tabs B327308 B327354\ (abs (arrow B327308 B327331) b327365\ (abs B327354 b327376\ (app b327365 b327376)))))) B324016) B324039) B324062) b324073) b324084))))))) B323807) B323830) B323830) b323864) (app (app (tapp (tapp (tapp (tabs top B328170\ (tabs B328170 B328193\ (tabs B328170 B328216\ (abs (arrow B328170 B328193) b328227\ (abs B328216 b328238\ (app b328227 b328238)))))) B323807) B323830) B323853) b323864) b323875))))))) B323598) B323621) B323621) b323655) (app (app (tapp (tapp (tapp (tabs top B328957\ (tabs B328957 B328980\ (tabs B328957 B329003\ (abs (arrow B328957 B328980) b329014\ (abs B329003 b329025\ (app b329014 b329025)))))) B323598) B323621) B323644) b323655) b323666))))))) B323389) B323412) B323412) b323446) (app (app (tapp (tapp (tapp (tabs top B329669\ (tabs B329669 B329692\ (tabs B329669 B329715\ (abs (arrow B329669 B329692) b329726\ (abs B329715 b329737\ (app b329726 b329737)))))) B323389) B323412) B323435) b323446) b323457))))))) B302170) B302193) B302170) b302227)))))) B301989) B302012) B302035) (app (tapp (tapp (tapp (tabs top B330289\ (tabs B330289 B330312\ (tabs B330289 B330335\ (abs (arrow B330289 B330312) b330346\ (abs B330335 b330357\ (app (app (tapp (tapp (tapp (tabs top B330498\ (tabs B330498 B330521\ (tabs B330498 B330544\ (abs (arrow B330498 B330521) b330555\ (abs B330544 b330566\ (app (app (tapp (tapp (tapp (tabs top B330707\ (tabs B330707 B330730\ (tabs B330707 B330753\ (abs (arrow B330707 B330730) b330764\ (abs B330753 b330775\ (app (app (tapp (tapp (tapp (tabs top B330916\ (tabs B330916 B330939\ (tabs B330916 B330962\ (abs (arrow B330916 B330939) b330973\ (abs B330962 b330984\ (app (app (tapp (tapp (tapp (tabs top B331125\ (tabs B331125 B331148\ (tabs B331125 B331171\ (abs (arrow B331125 B331148) b331182\ (abs B331171 b331193\ (app (app (tapp (tapp (tapp (tabs top B331334\ (tabs B331334 B331357\ (tabs B331334 B331380\ (abs (arrow B331334 B331357) b331391\ (abs B331380 b331402\ (app (app (tapp (tapp (tapp (tabs top B331543\ (tabs B331543 B331566\ (tabs B331543 B331589\ (abs (arrow B331543 B331566) b331600\ (abs B331589 b331611\ (app (app (tapp (tapp (tapp (tabs top B331752\ (tabs B331752 B331775\ (tabs B331752 B331798\ (abs (arrow B331752 B331775) b331809\ (abs B331798 b331820\ (app b331809 b331820)))))) B331543) B331566) B331566) b331600) (app (app (tapp (tapp (tapp (tabs top B332477\ (tabs B332477 B332500\ (tabs B332477 B332523\ (abs (arrow B332477 B332500) b332534\ (abs B332523 b332545\ (app b332534 b332545)))))) B331543) B331566) B331589) b331600) b331611))))))) B331334) B331357) B331357) b331391) (app (app (tapp (tapp (tapp (tabs top B333504\ (tabs B333504 B333527\ (tabs B333504 B333550\ (abs (arrow B333504 B333527) b333561\ (abs B333550 b333572\ (app b333561 b333572)))))) B331334) B331357) B331380) b331391) b331402))))))) B331125) B331148) B331148) b331182) (app (app (tapp (tapp (tapp (tabs top B334456\ (tabs B334456 B334479\ (tabs B334456 B334502\ (abs (arrow B334456 B334479) b334513\ (abs B334502 b334524\ (app b334513 b334524)))))) B331125) B331148) B331171) b331182) b331193))))))) B330916) B330939) B330939) b330973) (app (app (tapp (tapp (tapp (tabs top B335333\ (tabs B335333 B335356\ (tabs B335333 B335379\ (abs (arrow B335333 B335356) b335390\ (abs B335379 b335401\ (app b335390 b335401)))))) B330916) B330939) B330962) b330973) b330984))))))) B330707) B330730) B330730) b330764) (app (app (tapp (tapp (tapp (tabs top B336135\ (tabs B336135 B336158\ (tabs B336135 B336181\ (abs (arrow B336135 B336158) b336192\ (abs B336181 b336203\ (app b336192 b336203)))))) B330707) B330730) B330753) b330764) b330775))))))) B330498) B330521) B330521) b330555) (app (app (tapp (tapp (tapp (tabs top B336862\ (tabs B336862 B336885\ (tabs B336862 B336908\ (abs (arrow B336862 B336885) b336919\ (abs B336908 b336930\ (app b336919 b336930)))))) B330498) B330521) B330544) b330555) b330566))))))) B330289) B330312) B330312) b330346) (app (app (tapp (tapp (tapp (tabs top B337514\ (tabs B337514 B337537\ (tabs B337514 B337560\ (abs (arrow B337514 B337537) b337571\ (abs B337560 b337582\ (app b337571 b337582)))))) B330289) B330312) B330335) b330346) b330357))))))) B301989) B302012) B301989) b302046)))))) B301808) B301831) B301854) (app (tapp (tapp (tapp (tabs top B161872\ (tabs B161872 B161895\ (tabs B161872 B161918\ (abs (arrow B161872 B161895) b161929\ (abs B161918 b161940\ (app (app (tapp (tapp (tapp (tabs top B162081\ (tabs B162081 B162104\ (tabs B162081 B162127\ (abs (arrow B162081 B162104) b162138\ (abs B162127 b162149\ (app (app (tapp (tapp (tapp (tabs top B162290\ (tabs B162290 B162313\ (tabs B162290 B162336\ (abs (arrow B162290 B162313) b162347\ (abs B162336 b162358\ (app (app (tapp (tapp (tapp (tabs top B162499\ (tabs B162499 B162522\ (tabs B162499 B162545\ (abs (arrow B162499 B162522) b162556\ (abs B162545 b162567\ (app (app (tapp (tapp (tapp (tabs top B162708\ (tabs B162708 B162731\ (tabs B162708 B162754\ (abs (arrow B162708 B162731) b162765\ (abs B162754 b162776\ (app (app (tapp (tapp (tapp (tabs top B162917\ (tabs B162917 B162940\ (tabs B162917 B162963\ (abs (arrow B162917 B162940) b162974\ (abs B162963 b162985\ (app (app (tapp (tapp (tapp (tabs top B163126\ (tabs B163126 B163149\ (tabs B163126 B163172\ (abs (arrow B163126 B163149) b163183\ (abs B163172 b163194\ (app (app (tapp (tapp (tapp (tabs top B163335\ (tabs B163335 B163358\ (tabs B163335 B163381\ (abs (arrow B163335 B163358) b163392\ (abs B163381 b163403\ (app (app (tapp (tapp (tapp (tabs top B163544\ (tabs B163544 B163567\ (tabs B163544 B163590\ (abs (arrow B163544 B163567) b163601\ (abs B163590 b163612\ (app b163601 b163612)))))) B163335) B163358) B163358) b163392) (app (app (tapp (tapp (tapp (tabs top B164239\ (tabs B164239 B164262\ (tabs B164239 B164285\ (abs (arrow B164239 B164262) b164296\ (abs B164285 b164307\ (app b164296 b164307)))))) B163335) B163358) B163381) b163392) b163403))))))) B163126) B163149) B163149) b163183) (app (app (tapp (tapp (tapp (tabs top B165216\ (tabs B165216 B165239\ (tabs B165216 B165262\ (abs (arrow B165216 B165239) b165273\ (abs B165262 b165284\ (app b165273 b165284)))))) B163126) B163149) B163172) b163183) b163194))))))) B162917) B162940) B162940) b162974) (app (app (tapp (tapp (tapp (tabs top B166118\ (tabs B166118 B166141\ (tabs B166118 B166164\ (abs (arrow B166118 B166141) b166175\ (abs B166164 b166186\ (app b166175 b166186)))))) B162917) B162940) B162963) b162974) b162985))))))) B162708) B162731) B162731) b162765) (app (app (tapp (tapp (tapp (tabs top B166945\ (tabs B166945 B166968\ (tabs B166945 B166991\ (abs (arrow B166945 B166968) b167002\ (abs B166991 b167013\ (app b167002 b167013)))))) B162708) B162731) B162754) b162765) b162776))))))) B162499) B162522) B162522) b162556) (app (app (tapp (tapp (tapp (tabs top B167697\ (tabs B167697 B167720\ (tabs B167697 B167743\ (abs (arrow B167697 B167720) b167754\ (abs B167743 b167765\ (app b167754 b167765)))))) B162499) B162522) B162545) b162556) b162567))))))) B162290) B162313) B162313) b162347) (app (app (tapp (tapp (tapp (tabs top B168374\ (tabs B168374 B168397\ (tabs B168374 B168420\ (abs (arrow B168374 B168397) b168431\ (abs B168420 b168442\ (app b168431 b168442)))))) B162290) B162313) B162336) b162347) b162358))))))) B162081) B162104) B162104) b162138) (app (app (tapp (tapp (tapp (tabs top B168976\ (tabs B168976 B168999\ (tabs B168976 B169022\ (abs (arrow B168976 B168999) b169033\ (abs B169022 b169044\ (app b169033 b169044)))))) B162081) B162104) B162127) b162138) b162149))))))) B161872) B161895) B161895) b161929) (app (app (tapp (tapp (tapp (tabs top B136694\ (tabs B136694 B136717\ (tabs B136694 B136740\ (abs (arrow B136694 B136717) b136751\ (abs B136740 b136762\ (app b136751 b136762)))))) B161872) B161895) B161918) b161929) b161940))))))) B301808) B301831) B301808) b301865))))))) ((forall top X21\ (forall X21 X46\ (forall X21 X71\ (arrow (arrow X21 X46) (arrow X71 X46)))))).
CODE
$ans = <<'ANS';
ANS
same_answers( `$TJSIM -b $PATH --solve "$code" $MODULE\n`, $ans,"append");

############################################
############################################
$code = <<'CODE';
step ((app (app (abs (forall top X\ (forall X S\ (forall X Z\ (arrow (arrow X S) (arrow Z S))))) b1492\ (abs (forall top X\ (forall X S\ (forall X Z\ (arrow (arrow X S) (arrow Z S))))) b1503\ (tabs top B1526\ (tabs B1526 B1549\ (tabs B1526 B1572\ (abs (arrow B1526 B1549) b1583\ (app (tapp (tapp (tapp b1492 B1526) B1549) B1572) (app (tapp (tapp (tapp b1503 B1526) B1549) B1526) b1583)))))))) (tabs top B90\ (tabs B90 B113\ (tabs B90 B136\ (abs (arrow B90 B113) b147\ (abs B136 b158\ (app b147 b158))))))) (app (app (abs (forall top X\ (forall X S\ (forall X Z\ (arrow (arrow X S) (arrow Z S))))) b328\ (abs (forall top X\ (forall X S\ (forall X Z\ (arrow (arrow X S) (arrow Z S))))) b339\ (tabs top B362\ (tabs B362 B385\ (tabs B362 B408\ (abs (arrow B362 B385) b419\ (abs B408 b430\ (app (app (tapp (tapp (tapp b328 B362) B385) B385) b419) (app (app (tapp (tapp (tapp b339 B362) B385) B408) b419) b430))))))))) (tabs top B997\ (tabs B997 B1020\ (tabs B997 B1043\ (abs (arrow B997 B1020) b1054\ (abs B1043 b1065\ (app b1054 b1065))))))) (tabs top B1215\ (tabs B1215 B1238\ (tabs B1215 B1261\ (abs (arrow B1215 B1238) b1272\ (abs B1261 b1283\ (app b1272 b1283))))))))) ((app (abs (forall top X\ (forall X S\ (forall X Z\ (arrow (arrow X S) (arrow Z S))))) b41\ (tabs top B64\ (tabs B64 B87\ (tabs B64 B110\ (abs (arrow B64 B87) b121\ (app (tapp (tapp (tapp (tabs top B90\ (tabs B90 B113\ (tabs B90 B136\ (abs (arrow B90 B113) b147\ (abs B136 b158\ (app b147 b158)))))) B64) B87) B110) (app (tapp (tapp (tapp b41 B64) B87) B64) b121))))))) (app (app (abs (forall top X\ (forall X S\ (forall X Z\ (arrow (arrow X S) (arrow Z S))))) b328\ (abs (forall top X\ (forall X S\ (forall X Z\ (arrow (arrow X S) (arrow Z S))))) b339\ (tabs top B362\ (tabs B362 B385\ (tabs B362 B408\ (abs (arrow B362 B385) b419\ (abs B408 b430\ (app (app (tapp (tapp (tapp b328 B362) B385) B385) b419) (app (app (tapp (tapp (tapp b339 B362) B385) B408) b419) b430))))))))) (tabs top B997\ (tabs B997 B1020\ (tabs B997 B1043\ (abs (arrow B997 B1020) b1054\ (abs B1043 b1065\ (app b1054 b1065))))))) (tabs top B1215\ (tabs B1215 B1238\ (tabs B1215 B1261\ (abs (arrow B1215 B1238) b1272\ (abs B1261 b1283\ (app b1272 b1283))))))))).
CODE
$ans = <<'ANS';
ANS
same_answers( `$TJSIM -b $PATH --solve "$code" $MODULE\n`, $ans,"append");

############################################
############################################

$code = <<'CODE';
step ((app (abs (forall top X\ (forall X S\ (forall X Z\ (arrow (arrow X S) (arrow Z S))))) b41\ (tabs top B64\ (tabs B64 B87\ (tabs B64 B110\ (abs (arrow B64 B87) b121\ (app (tapp (tapp (tapp (tabs top B90\ (tabs B90 B113\ (tabs B90 B136\ (abs (arrow B90 B113) b147\ (abs B136 b158\ (app b147 b158)))))) B64) B87) B110) (app (tapp (tapp (tapp b41 B64) B87) B64) b121))))))) (app (app (abs (forall top X\ (forall X S\ (forall X Z\ (arrow (arrow X S) (arrow Z S))))) b328\ (abs (forall top X\ (forall X S\ (forall X Z\ (arrow (arrow X S) (arrow Z S))))) b339\ (tabs top B362\ (tabs B362 B385\ (tabs B362 B408\ (abs (arrow B362 B385) b419\ (abs B408 b430\ (app (app (tapp (tapp (tapp b328 B362) B385) B385) b419) (app (app (tapp (tapp (tapp b339 B362) B385) B408) b419) b430))))))))) (tabs top B997\ (tabs B997 B1020\ (tabs B997 B1043\ (abs (arrow B997 B1020) b1054\ (abs B1043 b1065\ (app b1054 b1065))))))) (tabs top B1215\ (tabs B1215 B1238\ (tabs B1215 B1261\ (abs (arrow B1215 B1238) b1272\ (abs B1261 b1283\ (app b1272 b1283))))))))) ((app (abs (forall top X\ (forall X S\ (forall X Z\ (arrow (arrow X S) (arrow Z S))))) b41\ (tabs top B64\ (tabs B64 B87\ (tabs B64 B110\ (abs (arrow B64 B87) b121\ (app (tapp (tapp (tapp (tabs top B90\ (tabs B90 B113\ (tabs B90 B136\ (abs (arrow B90 B113) b147\ (abs B136 b158\ (app b147 b158)))))) B64) B87) B110) (app (tapp (tapp (tapp b41 B64) B87) B64) b121))))))) (app (abs (forall top X\ (forall X S\ (forall X Z\ (arrow (arrow X S) (arrow Z S))))) b533\ (tabs top B556\ (tabs B556 B579\ (tabs B556 B602\ (abs (arrow B556 B579) b613\ (abs B602 b624\ (app (app (tapp (tapp (tapp (tabs top B997\ (tabs B997 B1020\ (tabs B997 B1043\ (abs (arrow B997 B1020) b1054\ (abs B1043 b1065\ (app b1054 b1065)))))) B556) B579) B579) b613) (app (app (tapp (tapp (tapp b533 B556) B579) B602) b613) b624)))))))) (tabs top B1215\ (tabs B1215 B1238\ (tabs B1215 B1261\ (abs (arrow B1215 B1238) b1272\ (abs B1261 b1283\ (app b1272 b1283))))))))).
CODE
$ans = <<'ANS';
ANS
same_answers( `$TJSIM -b $PATH --solve "$code" $MODULE\n`, $ans,"memb");

############################################
############################################

$code = <<'CODE';
step ((app (abs (forall top X\ (forall X S\ (forall X Z\ (arrow (arrow X S) (arrow Z S))))) b41\ (tabs top B64\ (tabs B64 B87\ (tabs B64 B110\ (abs (arrow B64 B87) b121\ (app (tapp (tapp (tapp (tabs top B90\ (tabs B90 B113\ (tabs B90 B136\ (abs (arrow B90 B113) b147\ (abs B136 b158\ (app b147 b158)))))) B64) B87) B110) (app (tapp (tapp (tapp b41 B64) B87) B64) b121))))))) (app (abs (forall top X\ (forall X S\ (forall X Z\ (arrow (arrow X S) (arrow Z S))))) b533\ (tabs top B556\ (tabs B556 B579\ (tabs B556 B602\ (abs (arrow B556 B579) b613\ (abs B602 b624\ (app (app (tapp (tapp (tapp (tabs top B997\ (tabs B997 B1020\ (tabs B997 B1043\ (abs (arrow B997 B1020) b1054\ (abs B1043 b1065\ (app b1054 b1065)))))) B556) B579) B579) b613) (app (app (tapp (tapp (tapp b533 B556) B579) B602) b613) b624)))))))) (tabs top B1215\ (tabs B1215 B1238\ (tabs B1215 B1261\ (abs (arrow B1215 B1238) b1272\ (abs B1261 b1283\ (app b1272 b1283))))))))) ((app (abs (forall top X\ (forall X S\ (forall X Z\ (arrow (arrow X S) (arrow Z S))))) b41\ (tabs top B64\ (tabs B64 B87\ (tabs B64 B110\ (abs (arrow B64 B87) b121\ (app (tapp (tapp (tapp (tabs top B90\ (tabs B90 B113\ (tabs B90 B136\ (abs (arrow B90 B113) b147\ (abs B136 b158\ (app b147 b158)))))) B64) B87) B110) (app (tapp (tapp (tapp b41 B64) B87) B64) b121))))))) (tabs top B509\ (tabs B509 B532\ (tabs B509 B555\ (abs (arrow B509 B532) b566\ (abs B555 b577\ (app (app (tapp (tapp (tapp (tabs top B718\ (tabs B718 B741\ (tabs B718 B764\ (abs (arrow B718 B741) b775\ (abs B764 b786\ (app b775 b786)))))) B509) B532) B532) b566) (app (app (tapp (tapp (tapp (tabs top B1215\ (tabs B1215 B1238\ (tabs B1215 B1261\ (abs (arrow B1215 B1238) b1272\ (abs B1261 b1283\ (app b1272 b1283)))))) B509) B532) B555) b566) b577))))))))).
CODE
$ans = <<'ANS';
ANS
same_answers( `$TJSIM -b $PATH --solve "$code" $MODULE\n`, $ans,"memb");

############################################
############################################

$code = <<'CODE';
of ((app (abs (forall top X\ (forall X S\ (forall X Z\ (arrow (arrow X S) (arrow Z S))))) b41\ (tabs top B64\ (tabs B64 B87\ (tabs B64 B110\ (abs (arrow B64 B87) b121\ (app (tapp (tapp (tapp (tabs top B90\ (tabs B90 B113\ (tabs B90 B136\ (abs (arrow B90 B113) b147\ (abs B136 b158\ (app b147 b158)))))) B64) B87) B110) (app (tapp (tapp (tapp b41 B64) B87) B64) b121))))))) (tabs top B509\ (tabs B509 B532\ (tabs B509 B555\ (abs (arrow B509 B532) b566\ (abs B555 b577\ (app (app (tapp (tapp (tapp (tabs top B718\ (tabs B718 B741\ (tabs B718 B764\ (abs (arrow B718 B741) b775\ (abs B764 b786\ (app b775 b786)))))) B509) B532) B532) b566) (app (app (tapp (tapp (tapp (tabs top B1215\ (tabs B1215 B1238\ (tabs B1215 B1261\ (abs (arrow B1215 B1238) b1272\ (abs B1261 b1283\ (app b1272 b1283)))))) B509) B532) B555) b566) b577))))))))) ((tabs top B31\ (tabs B31 B54\ (tabs B31 B77\ (abs (arrow B31 B54) b88\ (app (tapp (tapp (tapp (tabs top B212\ (tabs B212 B31\ (tabs B212 B258\ (abs (arrow B212 B31) b269\ (abs B258 b280\ (app b269 b280)))))) B31) B54) B77) (app (tapp (tapp (tapp (tabs top B509\ (tabs B509 B532\ (tabs B509 B555\ (abs (arrow B509 B532) b566\ (abs B555 b577\ (app (app (tapp (tapp (tapp (tabs top B718\ (tabs B718 B741\ (tabs B718 B764\ (abs (arrow B718 B741) b775\ (abs B764 b786\ (app b775 b786)))))) B509) B532) B532) b566) (app (app (tapp (tapp (tapp (tabs top B1215\ (tabs B1215 B1238\ (tabs B1215 B1261\ (abs (arrow B1215 B1238) b1272\ (abs B1261 b1283\ (app b1272 b1283)))))) B509) B532) B555) b566) b577))))))) B31) B54) B31) b88))))))).
CODE
$ans = <<'ANS';
ANS
same_answers( `$TJSIM -b $PATH --solve "$code" $MODULE\n`, $ans,"memb");

############################################
############################################

$code = <<'CODE';
step ((app (abs (forall top X\ (forall X S\ (forall X Z\ (arrow (arrow X S) (arrow Z S))))) b41\ (tabs top B64\ (tabs B64 B87\ (tabs B64 B110\ (abs (arrow B64 B87) b121\ (app (tapp (tapp (tapp (tabs top B90\ (tabs B90 B113\ (tabs B90 B136\ (abs (arrow B90 B113) b147\ (abs B136 b158\ (app b147 b158)))))) B64) B87) B110) (app (tapp (tapp (tapp b41 B64) B87) B64) b121))))))) (tabs top B509\ (tabs B509 B532\ (tabs B509 B555\ (abs (arrow B509 B532) b566\ (abs B555 b577\ (app (app (tapp (tapp (tapp (tabs top B718\ (tabs B718 B741\ (tabs B718 B764\ (abs (arrow B718 B741) b775\ (abs B764 b786\ (app b775 b786)))))) B509) B532) B532) b566) (app (app (tapp (tapp (tapp (tabs top B1215\ (tabs B1215 B1238\ (tabs B1215 B1261\ (abs (arrow B1215 B1238) b1272\ (abs B1261 b1283\ (app b1272 b1283)))))) B509) B532) B555) b566) b577))))))))) ((tabs top B31\ (tabs B31 B54\ (tabs B31 B77\ (abs (arrow B31 B54) b88\ (app (tapp (tapp (tapp (tabs top B212\ (tabs B212 B31\ (tabs B212 B258\ (abs (arrow B212 B31) b269\ (abs B258 b280\ (app b269 b280)))))) B31) B54) B77) (tapp (tapp (tapp (tapp (tabs top B509\ (tabs B509 B532\ (tabs B509 B555\ (abs (arrow B509 B532) b566\ (abs B555 b577\ (app (app (tapp (tapp (tapp (tabs top B718\ (tabs B718 B741\ (tabs B718 B764\ (abs (arrow B718 B741) b775\ (abs B764 b786\ (app b775 b786)))))) B509) B532) B532) b566) (app (app (tapp (tapp (tapp (tabs top B1215\ (tabs B1215 B1238\ (tabs B1215 B1261\ (abs (arrow B1215 B1238) b1272\ (abs B1261 b1283\ (app b1272 b1283)))))) B509) B532) B555) b566) b577))))))) B31) B54) B31) B31))))))).
CODE
$ans = <<'ANS';
ANS
same_answers( `$TJSIM -b $PATH --solve "$code" $MODULE\n`, $ans,"memb");


############################################
############################################

$code = <<'CODE';
step ((app (app (abs (forall top X\ (forall X S\ (forall X Z\ (arrow (arrow X S) (arrow Z S))))) n\ (abs (forall top X\ (forall X S\ (forall X Z\ (arrow (arrow X S) (arrow Z S))))) m\ (tabs top X\ (tabs X S\ (tabs X Z\ (abs (arrow X S) s\ (abs Z z\ (app (app (tapp (tapp (tapp n X) S) S) s) (app (app (tapp (tapp (tapp m X) S) Z) s) z))))))))) (tabs top X\ (tabs X S\ (tabs X Z\ (abs (arrow X S) s\ (abs Z z\ (app s z))))))) (tabs top X\ (tabs X S\ (tabs X Z\ (abs (arrow X S) s\ (abs Z z\ (app s z)))))))) ((app (abs (forall top X\ (forall X S\ (forall X Z\ (arrow (arrow X S) (arrow Z S))))) b41\ (tabs top B64\ (tabs B64 B87\ (tabs B64 B110\ (abs (arrow B64 B87) b121\ (abs B110 b132\ (app (app (tapp (tapp (tapp (tabs top X\ (tabs X S\ (tabs X Z\ (abs (arrow X S) s\ (abs Z z\ (app s z)))))) B64) B87) B87) b121) (app (app (tapp (tapp (tapp b41 B64) B87) B110) b121) b132)))))))) (tabs top X\ (tabs X S\ (tabs X Z\ (abs (arrow X S) s\ (abs Z z\ (app s z)))))))).
CODE
$ans = <<'ANS';
ANS
same_answers( `$TJSIM -b $PATH --solve "$code" $MODULE\n`, $ans,"memb");


############################################
############################################

$code = <<'CODE';
step ((app (abs (forall top X\ (forall X S\ (forall X Z\ (arrow (arrow X S) (arrow Z S))))) b41\ (tabs top B64\ (tabs B64 B87\ (tabs B64 B110\ (abs (arrow B64 B87) b121\ (abs B110 b132\ (app (app (tapp (tapp (tapp (tabs top X\ (tabs X S\ (tabs X Z\ (abs (arrow X S) s\ (abs Z z\ (app s z)))))) B64) B87) B87) b121) (app (app (tapp (tapp (tapp b41 B64) B87) B110) b121) b132)))))))) (tabs top X\ (tabs X S\ (tabs X Z\ (abs (arrow X S) s\ (abs Z z\ (app s z)))))))) ((tabs top B31\ (tabs B31 B54\ (tabs B31 B77\ (abs (arrow B31 B54) b88\ (abs B77 b99\ (app (app (tapp (tapp (tapp (tabs top B240\ (tabs B240 B263\ (tabs B240 B286\ (abs (arrow B240 B263) b297\ (abs B286 b308\ (app b297 b308)))))) B31) B54) B54) b88) (app (app (tapp (tapp (tapp (tabs top X\ (tabs X S\ (tabs X Z\ (abs (arrow X S) s\ (abs Z z\ (app s z)))))) B31) B54) B77) b88) b99)))))))).
CODE
$ans = <<'ANS';
ANS
same_answers( `$TJSIM -b $PATH --solve "$code" $MODULE\n`, $ans,"memb");

############################################
############################################
