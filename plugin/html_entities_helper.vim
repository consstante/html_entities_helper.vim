" HTML Entities Helper
" Author: Chris Batchelor (chris at firegoby dot com)
" License: See UNLICENSE file or http://unlicense.org/
" Version: 1.1
" Last Updated: 14 October 2011
" Description: A few handy search and replace functions for quickly dealing
"              with HTML Entities and their unicode equivalents

if exists('g:loaded_html_entities_helper')
   finish
endif

let g:loaded_html_entities_helper = 1

" Convert 246 unicode characters to HTML entities (named)
" Characters NOT replaced: nbsp, shy, zwnj, zwj, lrm, rlm
" List from: -
" http://en.wikipedia.org/wiki/List_of_XML_and_HTML_character_entity_references
" TODO: make work on a selection
function! g:encode_unicode()
  " Preparation: save last search, and cursor position.
  let _s=@/
  let l = line(".")
  let c = col(".")
  %s/"/\&quot;/egi
  %s/&/\&amp;/egi
  %s/'/\&apos;/egi
  %s/</\&lt;/egi
  %s/>/\&gt;/egi
  %s/¡/\&iexcl;/egi
  %s/¢/\&cent;/egi
  %s/£/\&pound;/egi
  %s/¤/\&curren;/egi
  %s/¥/\&yen;/egi
  %s/¦/\&brvbar;/egi
  %s/§/\&sect;/egi
  %s/¨/\&uml;/egi
  %s/©/\&copy;/egi
  %s/ª/\&ordf;/egi
  %s/«/\&laquo;/egi
  %s/¬/\&not;/egi
  %s/®/\&reg;/egi
  %s/¯/\&macr;/egi
  %s/°/\&deg;/egi
  %s/±/\&plusmn;/egi
  %s/²/\&sup2;/egi
  %s/³/\&sup3;/egi
  %s/´/\&acute;/egi
  %s/µ/\&micro;/egi
  %s/¶/\&para;/egi
  %s/·/\&middot;/egi
  %s/¸/\&cedil;/egi
  %s/¹/\&sup1;/egi
  %s/º/\&ordm;/egi
  %s/»/\&raquo;/egi
  %s/¼/\&frac14;/egi
  %s/½/\&frac12;/egi
  %s/¾/\&frac34;/egi
  %s/¿/\&iquest;/egi
  %s/À/\&Agrave;/egi
  %s/Á/\&Aacute;/egi
  %s/Â/\&Acirc;/egi
  %s/Ã/\&Atilde;/egi
  %s/Ä/\&Auml;/egi
  %s/Å/\&Aring;/egi
  %s/Æ/\&AElig;/egi
  %s/Ç/\&Ccedil;/egi
  %s/È/\&Egrave;/egi
  %s/É/\&Eacute;/egi
  %s/Ê/\&Ecirc;/egi
  %s/Ë/\&Euml;/egi
  %s/Ì/\&Igrave;/egi
  %s/Í/\&Iacute;/egi
  %s/Î/\&Icirc;/egi
  %s/Ï/\&Iuml;/egi
  %s/Ð/\&ETH;/egi
  %s/Ñ/\&Ntilde;/egi
  %s/Ò/\&Ograve;/egi
  %s/Ó/\&Oacute;/egi
  %s/Ô/\&Ocirc;/egi
  %s/Õ/\&Otilde;/egi
  %s/Ö/\&Ouml;/egi
  %s/×/\&times;/egi
  %s/Ø/\&Oslash;/egi
  %s/Ù/\&Ugrave;/egi
  %s/Ú/\&Uacute;/egi
  %s/Û/\&Ucirc;/egi
  %s/Ü/\&Uuml;/egi
  %s/Ý/\&Yacute;/egi
  %s/Þ/\&THORN;/egi
  %s/ß/\&szlig;/egi
  %s/à/\&agrave;/egi
  %s/á/\&aacute;/egi
  %s/â/\&acirc;/egi
  %s/ã/\&atilde;/egi
  %s/ä/\&auml;/egi
  %s/å/\&aring;/egi
  %s/æ/\&aelig;/egi
  %s/ç/\&ccedil;/egi
  %s/è/\&egrave;/egi
  %s/é/\&eacute;/egi
  %s/ê/\&ecirc;/egi
  %s/ë/\&euml;/egi
  %s/ì/\&igrave;/egi
  %s/í/\&iacute;/egi
  %s/î/\&icirc;/egi
  %s/ï/\&iuml;/egi
  %s/ð/\&eth;/egi
  %s/ñ/\&ntilde;/egi
  %s/ò/\&ograve;/egi
  %s/ó/\&oacute;/egi
  %s/ô/\&ocirc;/egi
  %s/õ/\&otilde;/egi
  %s/ö/\&ouml;/egi
  %s/÷/\&divide;/egi
  %s/ø/\&oslash;/egi
  %s/ù/\&ugrave;/egi
  %s/ú/\&uacute;/egi
  %s/û/\&ucirc;/egi
  %s/ü/\&uuml;/egi
  %s/ý/\&yacute;/egi
  %s/þ/\&thorn;/egi
  %s/ÿ/\&yuml;/egi
  %s/Œ/\&OElig;/egi
  %s/œ/\&oelig;/egi
  %s/Š/\&Scaron;/egi
  %s/š/\&scaron;/egi
  %s/Ÿ/\&Yuml;/egi
  %s/ƒ/\&fnof;/egi
  %s/ˆ/\&circ;/egi
  %s/˜/\&tilde;/egi
  %s/Α/\&Alpha;/egi
  %s/Β/\&Beta;/egi
  %s/Γ/\&Gamma;/egi
  %s/Δ/\&Delta;/egi
  %s/Ε/\&Epsilon;/egi
  %s/Ζ/\&Zeta;/egi
  %s/Η/\&Eta;/egi
  %s/Θ/\&Theta;/egi
  %s/Ι/\&Iota;/egi
  %s/Κ/\&Kappa;/egi
  %s/Λ/\&Lambda;/egi
  %s/Μ/\&Mu;/egi
  %s/Ν/\&Nu;/egi
  %s/Ξ/\&Xi;/egi
  %s/Ο/\&Omicron;/egi
  %s/Π/\&Pi;/egi
  %s/Ρ/\&Rho;/egi
  %s/Σ/\&Sigma;/egi
  %s/Τ/\&Tau;/egi
  %s/Υ/\&Upsilon;/egi
  %s/Φ/\&Phi;/egi
  %s/Χ/\&Chi;/egi
  %s/Ψ/\&Psi;/egi
  %s/Ω/\&Omega;/egi
  %s/α/\&alpha;/egi
  %s/β/\&beta;/egi
  %s/γ/\&gamma;/egi
  %s/δ/\&delta;/egi
  %s/ε/\&epsilon;/egi
  %s/ζ/\&zeta;/egi
  %s/η/\&eta;/egi
  %s/θ/\&theta;/egi
  %s/ι/\&iota;/egi
  %s/κ/\&kappa;/egi
  %s/λ/\&lambda;/egi
  %s/μ/\&mu;/egi
  %s/ν/\&nu;/egi
  %s/ξ/\&xi;/egi
  %s/ο/\&omicron;/egi
  %s/π/\&pi;/egi
  %s/ρ/\&rho;/egi
  %s/ς/\&sigmaf;/egi
  %s/σ/\&sigma;/egi
  %s/τ/\&tau;/egi
  %s/υ/\&upsilon;/egi
  %s/φ/\&phi;/egi
  %s/χ/\&chi;/egi
  %s/ψ/\&psi;/egi
  %s/ω/\&omega;/egi
  %s/ϑ/\&thetasym;/egi
  %s/ϒ/\&upsih;/egi
  %s/ϖ/\&piv;/egi
  "%s/ /\&ensp;/egi
  "%s/ /\&emsp;/egi
  "%s/ /\&thinsp;/egi
  %s/–/\&ndash;/egi
  %s/—/\&mdash;/egi
  %s/‘/\&lsquo;/egi
  %s/’/\&rsquo;/egi
  %s/‚/\&sbquo;/egi
  %s/“/\&ldquo;/egi
  %s/”/\&rdquo;/egi
  %s/„/\&bdquo;/egi
  %s/†/\&dagger;/egi
  %s/‡/\&Dagger;/egi
  %s/•/\&bull;/egi
  %s/…/\&hellip;/egi
  %s/‰/\&permil;/egi
  %s/′/\&prime;/egi
  %s/″/\&Prime;/egi
  %s/‹/\&lsaquo;/egi
  %s/›/\&rsaquo;/egi
  %s/‾/\&oline;/egi
  %s/⁄/\&frasl;/egi
  %s/€/\&euro;/egi
  %s/ℑ/\&image;/egi
  %s/℘/\&weierp;/egi
  %s/ℜ/\&real;/egi
  %s/™/\&trade;/egi
  %s/ℵ/\&alefsym;/egi
  %s/←/\&larr;/egi
  %s/↑/\&uarr;/egi
  %s/→/\&rarr;/egi
  %s/↓/\&darr;/egi
  %s/↔/\&harr;/egi
  %s/↵/\&crarr;/egi
  %s/⇐/\&lArr;/egi
  %s/⇑/\&uArr;/egi
  %s/⇒/\&rArr;/egi
  %s/⇓/\&dArr;/egi
  %s/⇔/\&hArr;/egi
  %s/∀/\&forall;/egi
  %s/∂/\&part;/egi
  %s/∃/\&exist;/egi
  %s/∅/\&empty;/egi
  %s/∇/\&nabla;/egi
  %s/∈/\&isin;/egi
  %s/∉/\&notin;/egi
  %s/∋/\&ni;/egi
  %s/∏/\&prod;/egi
  %s/∑/\&sum;/egi
  %s/−/\&minus;/egi
  %s/∗/\&lowast;/egi
  %s/√/\&radic;/egi
  %s/∝/\&prop;/egi
  %s/∞/\&infin;/egi
  %s/∠/\&ang;/egi
  %s/∧/\&and;/egi
  %s/∨/\&or;/egi
  %s/∩/\&cap;/egi
  %s/∪/\&cup;/egi
  %s/∫/\&int;/egi
  %s/∴/\&there4;/egi
  %s/∼/\&sim;/egi
  %s/≅/\&cong;/egi
  %s/≈/\&asymp;/egi
  %s/≠/\&ne;/egi
  %s/≡/\&equiv;/egi
  %s/≤/\&le;/egi
  %s/≥/\&ge;/egi
  %s/⊂/\&sub;/egi
  %s/⊃/\&sup;/egi
  %s/⊄/\&nsub;/egi
  %s/⊆/\&sube;/egi
  %s/⊇/\&supe;/egi
  %s/⊕/\&oplus;/egi
  %s/⊗/\&otimes;/egi
  %s/⊥/\&perp;/egi
  %s/⋅/\&sdot;/egi
  %s/⌈/\&lceil;/egi
  %s/⌉/\&rceil;/egi
  %s/⌊/\&lfloor;/egi
  %s/⌋/\&rfloor;/egi
  %s/〈/\&lang;/egi
  %s/〉/\&rang;/egi
  %s/◊/\&loz;/egi
  %s/♠/\&spades;/egi
  %s/♣/\&clubs;/egi
  %s/♥/\&hearts;/egi
  %s/♦/\&diams;/egi
  " Clean up: restore previous search history, and cursor position
  let @/=_s
  call cursor(l, c)
endfunction

" Replaces all 252 named HTML entities with their repective unicode code point
" because XML doesn't have named entities other than amp, quot, apos, lt, gt
" List from: -
" http://en.wikipedia.org/wiki/List_of_XML_and_HTML_character_entity_references
" TODO: make work on a selection
function! g:named_to_codepoint()
  " Preparation: save last search, and cursor position.
  let _s=@/
  let l = line(".")
  let c = col(".")
  " Do the business:
  %s/&nbsp;/\&#160;/egi
  %s/&iexcl;/\&#161;/egi
  %s/&cent;/\&#162;/egi
  %s/&pound;/\&#163;/egi
  %s/&curren;/\&#164;/egi
  %s/&yen;/\&#165;/egi
  %s/&brvbar;/\&#166;/egi
  %s/&sect;/\&#167;/egi
  %s/&uml;/\&#168;/egi
  %s/&copy;/\&#169;/egi
  %s/&ordf;/\&#170;/egi
  %s/&laquo;/\&#171;/egi
  %s/&not;/\&#172;/egi
  %s/&shy;/\&#173;/egi
  %s/&reg;/\&#174;/egi
  %s/&macr;/\&#175;/egi
  %s/&deg;/\&#176;/egi
  %s/&plusmn;/\&#177;/egi
  %s/&sup2;/\&#178;/egi
  %s/&sup3;/\&#179;/egi
  %s/&acute;/\&#180;/egi
  %s/&micro;/\&#181;/egi
  %s/&para;/\&#182;/egi
  %s/&middot;/\&#183;/egi
  %s/&cedil;/\&#184;/egi
  %s/&sup1;/\&#185;/egi
  %s/&ordm;/\&#186;/egi
  %s/&raquo;/\&#187;/egi
  %s/&frac14;/\&#188;/egi
  %s/&frac12;/\&#189;/egi
  %s/&frac34;/\&#190;/egi
  %s/&iquest;/\&#191;/egi
  %s/&Agrave;/\&#192;/egi
  %s/&Aacute;/\&#193;/egi
  %s/&Acirc;/\&#194;/egi
  %s/&Atilde;/\&#195;/egi
  %s/&Auml;/\&#196;/egi
  %s/&Aring;/\&#197;/egi
  %s/&AElig;/\&#198;/egi
  %s/&Ccedil;/\&#199;/egi
  %s/&Egrave;/\&#200;/egi
  %s/&Eacute;/\&#201;/egi
  %s/&Ecirc;/\&#202;/egi
  %s/&Euml;/\&#203;/egi
  %s/&Igrave;/\&#204;/egi
  %s/&Iacute;/\&#205;/egi
  %s/&Icirc;/\&#206;/egi
  %s/&Iuml;/\&#207;/egi
  %s/&ETH;/\&#208;/egi
  %s/&Ntilde;/\&#209;/egi
  %s/&Ograve;/\&#210;/egi
  %s/&Oacute;/\&#211;/egi
  %s/&Ocirc;/\&#212;/egi
  %s/&Otilde;/\&#213;/egi
  %s/&Ouml;/\&#214;/egi
  %s/&times;/\&#215;/egi
  %s/&Oslash;/\&#216;/egi
  %s/&Ugrave;/\&#217;/egi
  %s/&Uacute;/\&#218;/egi
  %s/&Ucirc;/\&#219;/egi
  %s/&Uuml;/\&#220;/egi
  %s/&Yacute;/\&#221;/egi
  %s/&THORN;/\&#222;/egi
  %s/&szlig;/\&#223;/egi
  %s/&agrave;/\&#224;/egi
  %s/&aacute;/\&#225;/egi
  %s/&acirc;/\&#226;/egi
  %s/&atilde;/\&#227;/egi
  %s/&auml;/\&#228;/egi
  %s/&aring;/\&#229;/egi
  %s/&aelig;/\&#230;/egi
  %s/&ccedil;/\&#231;/egi
  %s/&egrave;/\&#232;/egi
  %s/&eacute;/\&#233;/egi
  %s/&ecirc;/\&#234;/egi
  %s/&euml;/\&#235;/egi
  %s/&igrave;/\&#236;/egi
  %s/&iacute;/\&#237;/egi
  %s/&icirc;/\&#238;/egi
  %s/&iuml;/\&#239;/egi
  %s/&eth;/\&#240;/egi
  %s/&ntilde;/\&#241;/egi
  %s/&ograve;/\&#242;/egi
  %s/&oacute;/\&#243;/egi
  %s/&ocirc;/\&#244;/egi
  %s/&otilde;/\&#245;/egi
  %s/&ouml;/\&#246;/egi
  %s/&divide;/\&#247;/egi
  %s/&oslash;/\&#248;/egi
  %s/&ugrave;/\&#249;/egi
  %s/&uacute;/\&#250;/egi
  %s/&ucirc;/\&#251;/egi
  %s/&uuml;/\&#252;/egi
  %s/&yacute;/\&#253;/egi
  %s/&thorn;/\&#254;/egi
  %s/&yuml;/\&#255;/egi
  %s/&OElig;/\&#338;/egi
  %s/&oelig;/\&#339;/egi
  %s/&Scaron;/\&#352;/egi
  %s/&scaron;/\&#353;/egi
  %s/&Yuml;/\&#376;/egi
  %s/&fnof;/\&#402;/egi
  %s/&circ;/\&#710;/egi
  %s/&tilde;/\&#732;/egi
  %s/&Alpha;/\&#913;/egi
  %s/&Beta;/\&#914;/egi
  %s/&Gamma;/\&#915;/egi
  %s/&Delta;/\&#916;/egi
  %s/&Epsilon;/\&#917;/egi
  %s/&Zeta;/\&#918;/egi
  %s/&Eta;/\&#919;/egi
  %s/&Theta;/\&#920;/egi
  %s/&Iota;/\&#921;/egi
  %s/&Kappa;/\&#922;/egi
  %s/&Lambda;/\&#923;/egi
  %s/&Mu;/\&#924;/egi
  %s/&Nu;/\&#925;/egi
  %s/&Xi;/\&#926;/egi
  %s/&Omicron;/\&#927;/egi
  %s/&Pi;/\&#928;/egi
  %s/&Rho;/\&#929;/egi
  %s/&Sigma;/\&#931;/egi
  %s/&Tau;/\&#932;/egi
  %s/&Upsilon;/\&#933;/egi
  %s/&Phi;/\&#934;/egi
  %s/&Chi;/\&#935;/egi
  %s/&Psi;/\&#936;/egi
  %s/&Omega;/\&#937;/egi
  %s/&alpha;/\&#945;/egi
  %s/&beta;/\&#946;/egi
  %s/&gamma;/\&#947;/egi
  %s/&delta;/\&#948;/egi
  %s/&epsilon;/\&#949;/egi
  %s/&zeta;/\&#950;/egi
  %s/&eta;/\&#951;/egi
  %s/&theta;/\&#952;/egi
  %s/&iota;/\&#953;/egi
  %s/&kappa;/\&#954;/egi
  %s/&lambda;/\&#955;/egi
  %s/&mu;/\&#956;/egi
  %s/&nu;/\&#957;/egi
  %s/&xi;/\&#958;/egi
  %s/&omicron;/\&#959;/egi
  %s/&pi;/\&#960;/egi
  %s/&rho;/\&#961;/egi
  %s/&sigmaf;/\&#962;/egi
  %s/&sigma;/\&#963;/egi
  %s/&tau;/\&#964;/egi
  %s/&upsilon;/\&#965;/egi
  %s/&phi;/\&#966;/egi
  %s/&chi;/\&#967;/egi
  %s/&psi;/\&#968;/egi
  %s/&omega;/\&#969;/egi
  %s/&thetasym;/\&#977;/egi
  %s/&upsih;/\&#978;/egi
  %s/&piv;/\&#982;/egi
  %s/&ensp;/\&#8194;/egi
  %s/&emsp;/\&#8195;/egi
  %s/&thinsp;/\&#8201;/egi
  %s/&zwnj;/\&#8204;/egi
  %s/&zwj;/\&#8205;/egi
  %s/&lrm;/\&#8206;/egi
  %s/&rlm;/\&#8207;/egi
  %s/&ndash;/\&#8211;/egi
  %s/&mdash;/\&#8212;/egi
  %s/&lsquo;/\&#8216;/egi
  %s/&rsquo;/\&#8217;/egi
  %s/&sbquo;/\&#8218;/egi
  %s/&ldquo;/\&#8220;/egi
  %s/&rdquo;/\&#8221;/egi
  %s/&bdquo;/\&#8222;/egi
  %s/&dagger;/\&#8224;/egi
  %s/&Dagger;/\&#8225;/egi
  %s/&bull;/\&#8226;/egi
  %s/&hellip;/\&#8230;/egi
  %s/&permil;/\&#8240;/egi
  %s/&prime;/\&#8242;/egi
  %s/&Prime;/\&#8243;/egi
  %s/&lsaquo;/\&#8249;/egi
  %s/&rsaquo;/\&#8250;/egi
  %s/&oline;/\&#8254;/egi
  %s/&frasl;/\&#8260;/egi
  %s/&euro;/\&#8364;/egi
  %s/&image;/\&#8465;/egi
  %s/&weierp;/\&#8472;/egi
  %s/&real;/\&#8476;/egi
  %s/&trade;/\&#8482;/egi
  %s/&alefsym;/\&#8501;/egi
  %s/&larr;/\&#8592;/egi
  %s/&uarr;/\&#8593;/egi
  %s/&rarr;/\&#8594;/egi
  %s/&darr;/\&#8595;/egi
  %s/&harr;/\&#8596;/egi
  %s/&crarr;/\&#8629;/egi
  %s/&lArr;/\&#8656;/egi
  %s/&uArr;/\&#8657;/egi
  %s/&rArr;/\&#8658;/egi
  %s/&dArr;/\&#8659;/egi
  %s/&hArr;/\&#8660;/egi
  %s/&forall;/\&#8704;/egi
  %s/&part;/\&#8706;/egi
  %s/&exist;/\&#8707;/egi
  %s/&empty;/\&#8709;/egi
  %s/&nabla;/\&#8711;/egi
  %s/&isin;/\&#8712;/egi
  %s/&notin;/\&#8713;/egi
  %s/&ni;/\&#8715;/egi
  %s/&prod;/\&#8719;/egi
  %s/&sum;/\&#8721;/egi
  %s/&minus;/\&#8722;/egi
  %s/&lowast;/\&#8727;/egi
  %s/&radic;/\&#8730;/egi
  %s/&prop;/\&#8733;/egi
  %s/&infin;/\&#8734;/egi
  %s/&ang;/\&#8736;/egi
  %s/&and;/\&#8743;/egi
  %s/&or;/\&#8744;/egi
  %s/&cap;/\&#8745;/egi
  %s/&cup;/\&#8746;/egi
  %s/&int;/\&#8747;/egi
  %s/&there4;/\&#8756;/egi
  %s/&sim;/\&#8764;/egi
  %s/&cong;/\&#8773;/egi
  %s/&asymp;/\&#8776;/egi
  %s/&ne;/\&#8800;/egi
  %s/&equiv;/\&#8801;/egi
  %s/&le;/\&#8804;/egi
  %s/&ge;/\&#8805;/egi
  %s/&sub;/\&#8834;/egi
  %s/&sup;/\&#8835;/egi
  %s/&nsub;/\&#8836;/egi
  %s/&sube;/\&#8838;/egi
  %s/&supe;/\&#8839;/egi
  %s/&oplus;/\&#8853;/egi
  %s/&otimes;/\&#8855;/egi
  %s/&perp;/\&#8869;/egi
  %s/&sdot;/\&#8901;/egi
  %s/&lceil;/\&#8968;/egi
  %s/&rceil;/\&#8969;/egi
  %s/&lfloor;/\&#8970;/egi
  %s/&rfloor;/\&#8971;/egi
  %s/&lang;/\&#10216;/egi
  %s/&rang;/\&#10217;/egi
  %s/&loz;/\&#9674;/egi
  %s/&spades;/\&#9824;/egi
  %s/&clubs;/\&#9827;/egi
  %s/&hearts;/\&#9829;/egi
  %s/&diams;/\&#9830;/egi
  " Clean up: restore previous search history, and cursor position
  let @/=_s
  call cursor(l, c)
endfunction

" Encode unicode characters in current buffer to HTML Entities
nnoremap <silent> <leader>He :call g:encode_unicode()<CR>
" Convert all named HTML Entities in current buffer to numerical code point
nnoremap <silent> <leader>Hn :call g:named_to_codepoint()<CR>
