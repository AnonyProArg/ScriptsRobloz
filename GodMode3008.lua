
do local a='77fuscator - discord.gg/kWy43Y9rR3';return(function(b,c,d,e,f,g,h,i)local i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z,ba,bb,bc,bd,be,bf=string.byte,string.char,string.sub,table.concat,((math.ldexp or(function(i,j,k)return i*(2^j);end))),((getfenv or function()return _ENV end)),setmetatable,select,next,math.floor,string.format,unpack,tonumber,table.insert,string.gmatch,tostring,type,_VERSION,pcall,string.match,string.find,((debug.getinfo or debug.info)),string.len,table.getn;e={j,bb,q,k,l,u,x,o,bd,ba,s,n,nil,nil};local a=(function(bb,bg,bg)local bg,bh,bi='','',{};local bj=256;local bk={};for bl=0,(bj-1)do bk[bl]=j(bl);end;local bl=1;local function bm(bn)local bn=u(k(bb,bl,bl),36);bl=bl+1;local bo=u(k(bb,bl,(bl+bn-1)),36);bl=bl+bn;return bo;end bg=j(bm());do bi[1]=bg;end do while((bl<#bb)and not(be(a)~=f))do local a=bm();if bk[a]then bh=bk[a];else bh=(bg..k(bg,1,1));end;bk[bj]=bg..k(bh,1,1);bi[(bf(bi)+1)],bg,bj=bh,bh,(bj+1);end;end return l(bi);end)(b);local b=0;j=function(...)local b=''while true do for f,f in q,({...})do b=(b..s('%c',f))end break end return b end local function b(f,l,s,s)local s=0;for bb=0,31 do local be=(f%2);local bf=(l%2);if(not(be~=0))then if((bf==1))then l=(l-1);s=(s+2^bb);end;else f=f-1;if(not(bf~=0))then s=(s+2^bb);else l=l-1;end;end;l=l/2;f=(f/2);end;return s;end;local f=63;local l,l;local l=function(s,bb,be)while true do if bb<0 then return l(s,-bb)end break end return r(((s%2^32)/(2^bb)));end;local r=function(r,s,bb,bb,bb)do if s<0 then return l(r,-s)end;return((r*2^s)%2^32);end end local s=(2^32)-1;local function bb(be,bf,bg,bg)return((((be+bf)-b(be,bf)))/2)end;local function be(be,bf,bg,bg)return s-bb((s-be),s-bf)end;local function s(be,bf,bg,bh,bh)if bg then local bg=bg-bf+1;repeat be=l(be,((bf-1)));until true local l=(2^bg-1);be=bb(be,l);return be;else local l=r(1,(bf-1));return bb(be,l)~=0 and 1 or 0;end;end;local l=1;local function r(bb,bb,bb)local bb,be,bf,bg=i(a,l,l+3);while true do bb,be,bf,bg=b(bb,63),b(be,63),b(bf,63),b(bg,63);break end l=l+4;return((bg*16777216)+(bf*65536)+(be*256)+bb);end;local function bb(be,be,be,be)local be=b(i(a,l,l),f);l=l+1;return be;end;local function be(bf,bf)local bf,bg=r(),r();if((bf==0)and(bg==0))then return 0;end;local bf,bg,bh,bi=1,(((s(bg,1,20)*(2^32))+bf)),s(bg,21,31),((-1)^s(bg,32));if(not(bh~=0))then if(bg==0)then return bi*0;else bh=1;bf=0;end;elseif(bh==2047)then return((bg==0))and(bi*(1/0))or(bi*(0/0))end;return(m(bi,bh-1023)*(bf+(bg/(2^52))))end;local m=34;for m,m in q,e do if not bc(z,"\76\117\97\117")then if not bc(bd(m)["\119\104\97\116"],"\67")then r();end;elseif not bc(z,"\76\117\97\32\53\46\49")then local e,e=ba(function(e)if not bc(bd(m,"\115"),"\67")then be();end;end);if e then for e,e in q,bd(m,"\115")do if not bc(e,"\67")then bb();end end end end;end;local function e(m,m)local m,q=i(a,l,(l+2));m,q=b(m,f),b(q,f);while true do l=l+2;break end return((q*256)+m);end;local m=r;local function q(z,z,z)local m,z,bc='',m(),'';do if(z==0)then return'';end;m=k(a,l,(l+z-1));end l=l+z;for a=1,#m do bc=(bc..j(i(m,a,a)));end;return bc;end;local a=r;local function a(...)return{...},p("\35",...)end local function k(l,m,m)local m=c;local l=w(x(l),m)();return u(l);end;local l,l=ba(function(l,l,l)local l=(c^2)return((l%6));end);local l=k(l);local function m(u,u)local u={};local w={};local x={};local x={u,nil,w,nil,x,nil};x[4]=bb();local z={};for bc=1,r()do local bd,bf=bb();while true do if((bd==0))then bf=((bb()~=0));elseif(bd==3)then bf=be();elseif((bd==1))then bf=q();end;break end z[bc]=bf;end;repeat x[2]=z;for q=1,r()do w[q-1]=m();end;until true do for q=1,r()do local w=bb();if(not(s(w,1,1)~=0))then local s,w=s(w,2,3),s(w,4,6);local w={e(),e(),nil,nil,nil,nil,nil,nil};do if(not(s~=0))then while true do w[3]=e();break end w[5]=e();elseif(s==1)then w[3]=r();elseif(not(s~=2))or(not(s~=3))then w[3]=(r()-(2^16));if(s==3)then w[5]=e();end;end;end u[q]=w;end;end;return x;end end;local function e(q,r,s,u,u,u)local q,u,w,x=q[1],q[2],q[3],q[4];return function(...)local a,z,bb=a,1,-1;local p,bc,bd,be,bf={},{...},(p("\35",...)-1),{},{};for bg=0,bd,1 do if((bg>=x))then p[bg-x]=bc[(bg+1)];else bf[bg]=bc[bg+1];end;end;local x=(bd-x+1)local bc,bd;while true do bc=q[z];do bd=bc[1];end if(bd<=35)then if(17==bd or 17>bd)then if(8>=bd)then if(bd<3 or bd==3)then if(bd==1 or bd<1)then if(bd~=1)then local bg=bc[2]bf[bg]=bf[bg](t(bf,bg+1,bb));else z=bc[3];end;elseif not(3==bd)then local bg='';local bh='';local bi=bf[bc[5]];if not(y(bi)~="\115\116\114\105\110\103")then for bj=1,#bi,1 do bg=(bg..j(b(i(bi,bj,bj),f)));end;local bi,bj=ba(function(bi,bi)return bf[bc[3]][bg];end);if bi then if y(bf[bc[3]][bg])=="\102\117\110\99\116\105\111\110"or y(bf[bc[3]][bg])==d then bf[bc[5]]=bg;end;end;elseif y(bf[bc[3]][bf[bc[5]]])=="\115\116\114\105\110\103"then local bg=bf[bc[3]][bf[bc[5]]];repeat for bi=1,#bg,1 do bh=bh..j(b(i(bg,bi,bi),f));end;until true bf[bc[3]][bf[bc[5]]]=bh;end;bf[bc[2]]=bf[bc[3]][bf[bc[5]]];else local bg='';local bh=u[bc[3]];if not(y(bh)~=g)then for bi=1,#bh,1 do bg=bg..j(b(i(bh,bi,bi),f));end;local bh,bi=ba(function(bh,bh,bh)return bf[bc[2]][bg];end);if bh then u[bc[3]]=bg;end;end;bf[bc[2]][u[bc[3]]]=bf[bc[5]];end;elseif(bd<5 or bd==5)then if(4==bd)then for bg=bc[2],bc[3],1 do bf[bg]=nil;end;else bf[bc[2]]=e(w[bc[3]],nil,s);end;elseif(bd==6 or bd<6)then bf[bc[2]]=bf[bc[3]];elseif bd>7 then if((bf[bc[2]]==bf[bc[5]]))then z=(z+1);else z=bc[3];end;else local bg;local bh;local bi,bj;local bk;local bl;do bf[bc[2]]=false;end z=z+1;bc=q[z];do bf[bc[2]]={};end do z=(z+1);end bc=q[z];do bl='';end bk=u[bc[3]];if not(y(bk)~=g)then while true do for bm=1,#bk,1 do bl=(bl..j(b(i(bk,bm,bm),f)));end;break end bi,bj=ba(function(bm)return bf[bc[2]][bl];end);if bi then u[bc[3]]=bl;end;end;bf[bc[2]][u[bc[3]]]=u[bc[5]];repeat z=z+1;bc=q[z];until true bf[bc[2]]=u[bc[3]]/u[bc[5]];z=z+1;bc=q[z];bl='';bk=u[bc[3]];if not(y(bk)~=g)then for bm=1,#bk,1 do bl=bl..j(b(i(bk,bm,bm),f));end;bi,bj=ba(function(bm)return bf[bc[2]][bl];end);if bi then u[bc[3]]=bl;end;end;bf[bc[2]][u[bc[3]]]=bf[bc[5]];z=(z+1);bc=q[z];bl='';bk=u[bc[3]];if not(y(bk)~=g)then for bm=1,#bk,1 do bl=(bl..j(b(i(bk,bm,bm),f)));end;while true do bi,bj=ba(function(bm,bm,bm)return bf[bc[2]][bl];end);break end if bi then u[bc[3]]=bl;end;end;bf[bc[2]][u[bc[3]]]=u[bc[5]];z=z+1;bc=q[z];bl='';bk=u[bc[3]];if y(bk)==g then do for bm=1,#bk,1 do bl=bl..j(b(i(bk,bm,bm),f));end;end bi,bj=ba(function(bm,bm)return bf[bc[2]][bl];end);if bi then u[bc[3]]=bl;end;end;bf[bc[2]][u[bc[3]]]=u[bc[5]];z=z+1;bc=q[z];do bl='';bk=u[bc[3]];end while true do if(y(bk)==g)then repeat for bm=1,#bk,1 do bl=bl..j(b(i(bk,bm,bm),f));end;until true bi,bj=ba(function(bm)return bf[bc[2]][bl];end);if bi then u[bc[3]]=bl;end;end;break end do bf[bc[2]][u[bc[3]]]=u[bc[5]];end z=(z+1);bc=q[z];while true do bl='';break end bk=u[bc[3]];for bm=1,#bk,1 do bl=bl..j(b(i(bk,bm,bm),f));end;bf[bc[2]]=s[bl];z=(z+1);bc=q[z];do bl='';end bh='';bk=u[bc[5]];if not(y(bk)~="\115\116\114\105\110\103")then for bm=1,#bk,1 do bl=bl..j(b(i(bk,bm,bm),f));end;bi,bj=ba(function(bk,bk,bk,bk)return bf[bc[3]][bl];end);if bi then if not(y(bf[bc[3]][bl])~="\102\117\110\99\116\105\111\110")or y(bf[bc[3]][bl])==d then u[bc[5]]=bl;end;end;elseif y(bf[bc[3]][u[bc[5]]])=="\115\116\114\105\110\103"then bg=bf[bc[3]][u[bc[5]]];for bi=1,#bg,1 do bh=(bh..j(b(i(bg,bi,bi),f)));end;bf[bc[3]][u[bc[5]]]=bh;end;bf[bc[2]]=bf[bc[3]][u[bc[5]]];end;elseif(bd<12 or bd==12)then if(10==bd or 10>bd)then if(bd>9)then if((bf[bc[2]]==bf[bc[5]]))then z=(z+1);else z=bc[3];end;else local bg=bc[2]if bf[bg]then local bh,bi=a(bf[bg](t(bf,bg+1,bc[3])))bb=(bi+bg-1)local bi=0;for bj=bg,bb do do bi=bi+1;end bf[bj]=bh[bi];end;end;end;elseif(bd<12)then bf[bc[2]]={};else local bg=bc[2]bf[bg](t(bf,(bg+1),bc[3]))end;elseif(bd==14 or bd<14)then if not(bd~=13)then local bg='';local bh='';local bi=u[bc[5]];do if(y(bi)=="\115\116\114\105\110\103")then for bj=1,#bi,1 do bg=(bg..j(b(i(bi,bj,bj),f)));end;local bi,bj=ba(function(bi)return bf[bc[3]][bg];end);if bi then if((y(bf[bc[3]][bg])=="\102\117\110\99\116\105\111\110")or not(y(bf[bc[3]][bg])~=d))then u[bc[5]]=bg;end;end;elseif not(y(bf[bc[3]][u[bc[5]]])~="\115\116\114\105\110\103")then local bg=bf[bc[3]][u[bc[5]]];do for bi=1,#bg,1 do bh=(bh..j(b(i(bg,bi,bi),f)));end;end bf[bc[3]][u[bc[5]]]=bh;end;bf[bc[2]]=bf[bc[3]][u[bc[5]]];end else local bg=bc[2];bb=((bg+x)-1);for bh=bg,bb do local bg=p[bh-bg];bf[bh]=bg;end;end;elseif 15>=bd then local bg='';local bh=u[bc[3]];for bi=1,#bh,1 do bg=(bg..j(b(i(bh,bi,bi),f)));end;bf[bc[2]]=s[bg];elseif(bd==16)then local bg='';local bh='';local bi=bf[bc[5]];if not(y(bi)~="\115\116\114\105\110\103")then repeat for bj=1,#bi,1 do bg=(bg..j(b(i(bi,bj,bj),f)));end;until true local bi,bj=ba(function(bi)return bf[bc[3]][bg];end);if bi then if y(bf[bc[3]][bg])=="\102\117\110\99\116\105\111\110"or y(bf[bc[3]][bg])==d then bf[bc[5]]=bg;end;end;elseif not(y(bf[bc[3]][bf[bc[5]]])~="\115\116\114\105\110\103")then local bg=bf[bc[3]][bf[bc[5]]];for bi=1,#bg,1 do bh=bh..j(b(i(bg,bi,bi),f));end;bf[bc[3]][bf[bc[5]]]=bh;end;bf[bc[2]]=bf[bc[3]][bf[bc[5]]];else local bg=bc[2]bf[bg](t(bf,(bg+1),bc[3]))end;elseif(bd<26 or bd==26)then if(bd==21 or bd<21)then if(19==bd or 19>bd)then if bd==18 then local bg='';local bh='';local bi=u[bc[5]];if not(y(bi)~="\115\116\114\105\110\103")then for bj=1,#bi,1 do bg=(bg..j(b(i(bi,bj,bj),f)));end;local bi,bj=ba(function(bi)return bf[bc[3]][bg];end);if bi then if(y(bf[bc[3]][bg])=="\102\117\110\99\116\105\111\110"or y(bf[bc[3]][bg])==d)then u[bc[5]]=bg;end;end;elseif y(bf[bc[3]][u[bc[5]]])=="\115\116\114\105\110\103"then local bg=bf[bc[3]][u[bc[5]]];for bi=1,#bg,1 do bh=(bh..j(b(i(bg,bi,bi),f)));end;bf[bc[3]][u[bc[5]]]=bh;end;bf[bc[2]]=bf[bc[3]][u[bc[5]]];else local bg=bc[2];do return bf[bg](t(bf,bg+1,bb))end;end;elseif(20==bd)then local bg;local bh,bi;local bj;local bk;local bl;bf[bc[2]]=false;z=z+1;do bc=q[z];bl='';end bk='';bj=bf[bc[5]];if y(bj)=="\115\116\114\105\110\103"then for bm=1,#bj,1 do bl=bl..j(b(i(bj,bm,bm),f));end;bh,bi=ba(function(bj)return bf[bc[3]][bl];end);if bh then if(not(y(bf[bc[3]][bl])~="\102\117\110\99\116\105\111\110")or not(y(bf[bc[3]][bl])~=d))then bf[bc[5]]=bl;end;end;elseif y(bf[bc[3]][bf[bc[5]]])=="\115\116\114\105\110\103"then repeat bg=bf[bc[3]][bf[bc[5]]];until true for bh=1,#bg,1 do bk=bk..j(b(i(bg,bh,bh),f));end;bf[bc[3]][bf[bc[5]]]=bk;end;bf[bc[2]]=bf[bc[3]][bf[bc[5]]];z=(z+1);bc=q[z];bf[bc[2]]=bf[bc[3]];z=(z+1);while true do bc=q[z];break end bf[bc[2]]=bf[bc[3]];z=(z+1);repeat bc=q[z];until true if bf[bc[2]]then z=z+1;else z=bc[3];end;else local bg,bh;local bh;local bi;local bj;local bk;local bl,bm;local bn;local bo;local bp;bp='';bo='';bn=u[bc[5]];if y(bn)=="\115\116\114\105\110\103"then for bq=1,#bn,1 do bp=(bp..j(b(i(bn,bq,bq),f)));end;bl,bm=ba(function(bq)return bf[bc[3]][bp];end);if bl then if(not(y(bf[bc[3]][bp])~="\102\117\110\99\116\105\111\110")or(y(bf[bc[3]][bp])==d))then u[bc[5]]=bp;end;end;elseif not(y(bf[bc[3]][u[bc[5]]])~="\115\116\114\105\110\103")then bk=bf[bc[3]][u[bc[5]]];for bq=1,#bk,1 do bo=bo..j(b(i(bk,bq,bq),f));end;bf[bc[3]][u[bc[5]]]=bo;end;bf[bc[2]]=bf[bc[3]][u[bc[5]]];z=z+1;bc=q[z];bp='';bo='';bn=u[bc[5]];if y(bn)=="\115\116\114\105\110\103"then for bq=1,#bn,1 do bp=bp..j(b(i(bn,bq,bq),f));end;bl,bm=ba(function(bq,bq,bq)return bf[bc[3]][bp];end);if bl then if(y(bf[bc[3]][bp])=="\102\117\110\99\116\105\111\110"or y(bf[bc[3]][bp])==d)then u[bc[5]]=bp;end;end;elseif y(bf[bc[3]][u[bc[5]]])=="\115\116\114\105\110\103"then bk=bf[bc[3]][u[bc[5]]];repeat for bq=1,#bk,1 do bo=(bo..j(b(i(bk,bq,bq),f)));end;until true bf[bc[3]][u[bc[5]]]=bo;end;bf[bc[2]]=bf[bc[3]][u[bc[5]]];z=z+1;bc=q[z];do bp='';bo='';end bn=u[bc[5]];do if y(bn)=="\115\116\114\105\110\103"then for bq=1,#bn,1 do bp=bp..j(b(i(bn,bq,bq),f));end;bl,bm=ba(function(bq,bq,bq,bq)return bf[bc[3]][bp];end);if bl then if not(y(bf[bc[3]][bp])~="\102\117\110\99\116\105\111\110")or y(bf[bc[3]][bp])==d then u[bc[5]]=bp;end;end;elseif(y(bf[bc[3]][u[bc[5]]])=="\115\116\114\105\110\103")then bk=bf[bc[3]][u[bc[5]]];repeat for bq=1,#bk,1 do bo=(bo..j(b(i(bk,bq,bq),f)));end;bf[bc[3]][u[bc[5]]]=bo;until true end;bf[bc[2]]=bf[bc[3]][u[bc[5]]];end z=z+1;do bc=q[z];bj=bc[2];end bi=bf[bc[3]];do bf[bj+1]=bi;end bp='';bn=u[bc[5]];if(y(bn)=="\115\116\114\105\110\103")then for bk=1,#bn,1 do bp=(bp..j(b(i(bn,bk,bk),f)));end;bh='';do for bk=1,#bp,1 do bh=(bh..j(b(i(bp,bk,bk),f)));end;bg,bm=ba(function(bk,bk,bk)return bi[bh];end);end bl,bm=ba(function(bk,bk)return bi[bp];end);if bg and y(bi[bh])==h then u[bc[5]]=bh;elseif(bl and(y(bi[bp])==h))then u[bc[5]]=bp;end;end;bf[bj]=bi[u[bc[5]]];repeat z=z+1;bc=q[z];until true bp='';bn=u[bc[3]];do if not(y(bn)~="\115\116\114\105\110\103")then for bg=1,#bn,1 do bp=bp..j(b(i(bn,bg,bg),f));end;else bp=u[bc[3]];end;bf[bc[2]]=bp;end do z=(z+1);end bc=q[z];bf[bc[2]]=bf[bc[3]];z=(z+1);bc=q[z];while true do bj=bc[2]break end bf[bj](t(bf,(bj+1),bc[3]))end;elseif(23>bd or 23==bd)then if(23>bd)then bf[bc[2]]=r[bc[3]];else local bg=bc[2]if bf[bg]then local bh,bi=a(bf[bg](bf[(bg+1)]))bb=bi+bg-1 local bi=0;for bj=bg,bb do bi=bi+1;bf[bj]=bh[bi];end;end;end;elseif 24>=bd then bf[bc[2]]=(bf[bc[3]]+u[bc[5]]);elseif(bd>25)then bf[bc[2]]=r[bc[3]];else local bg='';local bh=u[bc[3]];repeat for bi=1,#bh,1 do bg=(bg..j(b(i(bh,bi,bi),f)));end;bf[bc[2]]=s[bg];until true end;elseif(30>=bd)then if 28>=bd then if(27<bd)then local bg='';local bh=u[bc[3]];if y(bh)==g then for bi=1,#bh,1 do bg=(bg..j(b(i(bh,bi,bi),f)));end;local bh,bi=ba(function(bh,bh,bh)return bf[bc[2]][bg];end);if bh then u[bc[3]]=bg;end;end;bf[bc[2]][u[bc[3]]]=bf[bc[5]];else local bg,bg=ba(function(bg,bg,bg,bg)local bg=(c^2)end);local bh=k(bg);local bg=k(bg);if l~=(bh or bg)or bh~=(bg or l)then bf[bc[2]]=nil;for bg=0,6 do z=(z-1);end;end;end;elseif(29<bd)then local bg=bc[2];local bh=bf[bg];for bi=(bg+1),bb,1 do v(bh,bf[bi])end;else local bg;local bh,bi;local bj;local bk;local bl;local bm;local bn;local bo;local bp,bq;do bf[bc[2]]=false;end z=z+1;bc=q[z];bf[bc[2]]=r[bc[3]];do z=(z+1);bc=q[z];end repeat bf[bc[2]]=bf[bc[3]];until true do z=(z+1);end bc=q[z];bp,bq=ba(function(br,br,br,br)bo=((c^2))end);do bn=k(bq);bm=k(bq);end if l~=(bn or bm)or bn~=(bm or l)then do bf[bc[2]]=nil;for bm=0,7 do z=(z-1);end;end end;z=z+1;bc=q[z];bl='';bk=u[bc[3]];do for bm=1,#bk,1 do bl=(bl..j(b(i(bk,bm,bm),f)));end;end bf[bc[2]]=s[bl];z=z+1;bc=q[z];while true do bf[bc[2]]=bf[bc[3]];break end repeat z=z+1;until true bc=q[z];bj=bc[2]if bf[bj]then repeat bh,bi=a(bf[bj](bf[(bj+1)]))until true bb=(bi+bj-1)bg=0;for bi=bj,bb do bg=bg+1;bf[bi]=bh[bg];end;end;end;elseif(bd==32 or bd<32)then if(bd<32)then local bg=bc[2]bf[bg]=bf[bg]();else if bf[bc[2]]then z=z+1;else z=bc[3];end;end;elseif(bd==33 or bd<33)then bf[bc[2]]=(bf[bc[3]]+u[bc[5]]);elseif not(35==bd)then do return end;else local bg;local bh,bi;local bi;local bj;local bk;local bl;local bm;local bn;local bo,bp;bo,bp=ba(function(bq)bn=((c^2))end);do bm=k(bp);bl=k(bp);end if(l~=(bm or bl))or(bm~=(bl or l))then bf[bc[2]]=nil;for bl=0,9 do z=(z-1);end;end;do z=(z+1);end bc=q[z];while true do bk='';break end repeat bj=u[bc[3]];until true for bl=1,#bj,1 do bk=bk..j(b(i(bj,bl,bl),f));end;bf[bc[2]]=s[bk];while true do z=(z+1);break end bc=q[z];repeat bk='';bi='';until true bj=u[bc[5]];if y(bj)=="\115\116\114\105\110\103"then for bl=1,#bj,1 do bk=bk..j(b(i(bj,bl,bl),f));end;bh,bp=ba(function(bj)return bf[bc[3]][bk];end);if bh then if(y(bf[bc[3]][bk])=="\102\117\110\99\116\105\111\110"or y(bf[bc[3]][bk])==d)then u[bc[5]]=bk;end;end;elseif not(y(bf[bc[3]][u[bc[5]]])~="\115\116\114\105\110\103")then while true do bg=bf[bc[3]][u[bc[5]]];break end while true do for bh=1,#bg,1 do bi=bi..j(b(i(bg,bh,bh),f));end;break end bf[bc[3]][u[bc[5]]]=bi;end;bf[bc[2]]=bf[bc[3]][u[bc[5]]];z=z+1;bc=q[z];bf[bc[2]]=bf[bc[3]];z=z+1;repeat bc=q[z];until true repeat bf[bc[2]]=bf[bc[3]];z=(z+1);until true do bc=q[z];if not bf[bc[2]]then z=z+1;else z=bc[3];end;end end;elseif(bd==53 or bd<53)then if(44>=bd)then if(bd<39 or bd==39)then if 37>=bd then if not(37==bd)then local bg='';local bh=u[bc[3]];if y(bh)=="\115\116\114\105\110\103"then for bi=1,#bh,1 do bg=(bg..j(b(i(bh,bi,bi),f)));end;else bg=u[bc[3]];end;bf[bc[2]]=bg;else local bg=bc[2];local bh=bf[bg];for bi=bg+1,bb,1 do v(bh,bf[bi])end;end;elseif not(bd~=38)then bf[bc[2]]=bf[bc[3]];else local v=bc[2]bf[v]=bf[v](t(bf,v+1,bc[3]));end;elseif 41>=bd then if bd==40 then for v=bc[2],bc[3],1 do bf[v]=nil;end;else do return end;end;elseif(bd<=42)then local v='';local bg=u[bc[3]];if y(bg)==g then for bh=1,#bg,1 do v=v..j(b(i(bg,bh,bh),f));end;local bg,bh=ba(function(bg,bg,bg)return bf[bc[2]][v];end);if bg then u[bc[3]]=v;end;end;bf[bc[2]][u[bc[3]]]=u[bc[5]];elseif not(44==bd)then if not bf[bc[2]]then z=(z+1);else z=bc[3];end;else local v=bc[2];local bg=bf[bc[3]];do bf[(v+1)]=bg;end local bh='';local bi=u[bc[5]];repeat if y(bi)=="\115\116\114\105\110\103"then for bj=1,#bi,1 do bh=bh..j(b(i(bi,bj,bj),f));end;local bi='';for bj=1,#bh,1 do bi=bi..j(b(i(bh,bj,bj),f));end;local bj,bk=ba(function(bj,bj)return bg[bi];end);local bk,bl=ba(function(bk,bk)return bg[bh];end);if(bj and y(bg[bi])==h)then u[bc[5]]=bi;elseif bk and y(bg[bh])==h then u[bc[5]]=bh;end;end;bf[v]=bg[u[bc[5]]];until true end;elseif(bd<=48)then if(46>=bd)then if bd>45 then local v=bc[2]bf[v]=bf[v](bf[v+1]);else local v=bc[2]bf[v]=bf[v](t(bf,v+1,bb));end;elseif 48>bd then local v,v=ba(function(v)local v=(c^2)end);local bg=k(v);local v=k(v);if(not(l==(bg or v))or not(bg==(v or l)))then bf[bc[2]]=nil;for v=0,5 do z=(z-1);end;end;else local v;local bg;local bh;local bi,bj;local bj;local bk,bl;local bm;local bn;local bo;bo='';repeat bn='';bm=u[bc[5]];until true if not(y(bm)~="\115\116\114\105\110\103")then while true do for bp=1,#bm,1 do bo=bo..j(b(i(bm,bp,bp),f));end;break end bk,bl=ba(function(bp,bp)return bf[bc[3]][bo];end);if bk then if(not(y(bf[bc[3]][bo])~="\102\117\110\99\116\105\111\110")or not(y(bf[bc[3]][bo])~=d))then u[bc[5]]=bo;end;end;elseif y(bf[bc[3]][u[bc[5]]])=="\115\116\114\105\110\103"then bj=bf[bc[3]][u[bc[5]]];for bp=1,#bj,1 do bn=bn..j(b(i(bj,bp,bp),f));end;bf[bc[3]][u[bc[5]]]=bn;end;bf[bc[2]]=bf[bc[3]][u[bc[5]]];repeat z=z+1;bc=q[z];until true bo='';bn='';bm=u[bc[5]];if(y(bm)=="\115\116\114\105\110\103")then for bp=1,#bm,1 do bo=(bo..j(b(i(bm,bp,bp),f)));end;bk,bl=ba(function(bp)return bf[bc[3]][bo];end);if bk then if not(y(bf[bc[3]][bo])~="\102\117\110\99\116\105\111\110")or not(y(bf[bc[3]][bo])~=d)then u[bc[5]]=bo;end;end;elseif not(y(bf[bc[3]][u[bc[5]]])~="\115\116\114\105\110\103")then bj=bf[bc[3]][u[bc[5]]];for bp=1,#bj,1 do bn=(bn..j(b(i(bj,bp,bp),f)));end;bf[bc[3]][u[bc[5]]]=bn;end;repeat bf[bc[2]]=bf[bc[3]][u[bc[5]]];until true while true do z=(z+1);break end bc=q[z];do bo='';end while true do bn='';break end bm=u[bc[5]];if y(bm)=="\115\116\114\105\110\103"then for bp=1,#bm,1 do bo=(bo..j(b(i(bm,bp,bp),f)));end;while true do bk,bl=ba(function(bp,bp)return bf[bc[3]][bo];end);break end if bk then if(y(bf[bc[3]][bo])=="\102\117\110\99\116\105\111\110"or y(bf[bc[3]][bo])==d)then u[bc[5]]=bo;end;end;elseif not(y(bf[bc[3]][u[bc[5]]])~="\115\116\114\105\110\103")then bj=bf[bc[3]][u[bc[5]]];for bp=1,#bj,1 do bn=bn..j(b(i(bj,bp,bp),f));end;bf[bc[3]][u[bc[5]]]=bn;end;repeat bf[bc[2]]=bf[bc[3]][u[bc[5]]];until true z=z+1;bc=q[z];bo='';bn='';bm=u[bc[5]];while true do if(y(bm)=="\115\116\114\105\110\103")then for bp=1,#bm,1 do bo=(bo..j(b(i(bm,bp,bp),f)));end;bk,bl=ba(function(bp,bp,bp)return bf[bc[3]][bo];end);if bk then if y(bf[bc[3]][bo])=="\102\117\110\99\116\105\111\110"or y(bf[bc[3]][bo])==d then u[bc[5]]=bo;end;end;elseif not(y(bf[bc[3]][u[bc[5]]])~="\115\116\114\105\110\103")then bj=bf[bc[3]][u[bc[5]]];for bp=1,#bj,1 do bn=(bn..j(b(i(bj,bp,bp),f)));end;bf[bc[3]][u[bc[5]]]=bn;end;break end bf[bc[2]]=bf[bc[3]][u[bc[5]]];z=(z+1);bc=q[z];bo='';bm=u[bc[3]];if not(y(bm)~=g)then for bj=1,#bm,1 do bo=(bo..j(b(i(bm,bj,bj),f)));end;do bk,bl=ba(function(bj)return bf[bc[2]][bo];end);if bk then u[bc[3]]=bo;end;end end;bf[bc[2]][u[bc[3]]]=bf[bc[5]];z=(z+1);bc=q[z];do bo='';end bm=u[bc[3]];if not(y(bm)~=g)then for bj=1,#bm,1 do bo=(bo..j(b(i(bm,bj,bj),f)));end;bk,bl=ba(function(bj,bj)return bf[bc[2]][bo];end);if bk then u[bc[3]]=bo;end;end;while true do bf[bc[2]][u[bc[3]]]=u[bc[5]];break end z=(z+1);bc=q[z];bf[bc[2]]=u[bc[3]]/u[bc[5]];while true do z=(z+1);break end bc=q[z];bo='';repeat bm=u[bc[3]];until true while true do if y(bm)==g then for bj=1,#bm,1 do bo=(bo..j(b(i(bm,bj,bj),f)));end;bk,bl=ba(function(bj)return bf[bc[2]][bo];end);if bk then u[bc[3]]=bo;end;end;break end repeat bf[bc[2]][u[bc[3]]]=bf[bc[5]];z=(z+1);until true bc=q[z];bi,bl=ba(function(bj)bh=((c^2))end);bg=k(bl);v=k(bl);if(l~=(bg or v)or bg~=(v or l))then bf[bc[2]]=nil;for v=0,7 do z=(z-1);end;end;z=(z+1);bc=q[z];bo='';repeat bm=u[bc[3]];until true for v=1,#bm,1 do bo=(bo..j(b(i(bm,v,v),f)));end;bf[bc[2]]=s[bo];end;elseif(50==bd or 50>bd)then if(bd<50)then if not bf[bc[2]]then z=z+1;else z=bc[3];end;else bf[bc[2]]=false;end;elseif(bd<=51)then local v=bc[2];do return t(bf,v,bb)end;elseif bd==52 then local v;local bg,bh;local bi;local bj;local bk;local bl;local bm,bn;local bn;local bo,bp;local bq;local br;local bs;bf[bc[2]]=false;z=(z+1);repeat bc=q[z];until true bs='';repeat br='';bq=bf[bc[5]];until true if(y(bq)=="\115\116\114\105\110\103")then for bt=1,#bq,1 do bs=bs..j(b(i(bq,bt,bt),f));end;do bo,bp=ba(function(bt,bt)return bf[bc[3]][bs];end);end if bo then if(y(bf[bc[3]][bs])=="\102\117\110\99\116\105\111\110")or not(y(bf[bc[3]][bs])~=d)then bf[bc[5]]=bs;end;end;elseif y(bf[bc[3]][bf[bc[5]]])=="\115\116\114\105\110\103"then bn=bf[bc[3]][bf[bc[5]]];for d=1,#bn,1 do br=(br..j(b(i(bn,d,d),f)));end;bf[bc[3]][bf[bc[5]]]=br;end;while true do bf[bc[2]]=bf[bc[3]][bf[bc[5]]];break end z=z+1;bc=q[z];bm,bp=ba(function(d,d,d)bl=((c^2))end);bk=k(bp);bj=k(bp);if(not(l==((bk or bj)))or not(bk==((bj or l))))then bf[bc[2]]=nil;for c=0,5 do z=z-1;end;end;z=(z+1);bc=q[z];bs='';bq=u[bc[3]];repeat for c=1,#bq,1 do bs=(bs..j(b(i(bq,c,c),f)));end;until true while true do bf[bc[2]]=s[bs];break end z=z+1;repeat bc=q[z];until true repeat bf[bc[2]]=bf[bc[3]];z=(z+1);until true bc=q[z];bf[bc[2]]=bf[bc[3]]+u[bc[5]];z=z+1;repeat bc=q[z];bi=bc[2]until true if bf[bi]then bg,bh=a(bf[bi](t(bf,bi+1,bc[3])))bb=bh+bi-1 v=0;for c=bi,bb do v=(v+1);bf[c]=bg[v];end;end;else if bf[bc[2]]then z=z+1;else z=bc[3];end;end;elseif(62==bd or 62>bd)then if(57>=bd)then if bd<=55 then if bd~=55 then local c=bc[2];bb=(c+x-1);for d=c,bb do local c=p[(d-c)];bf[d]=c;end;else local c=bc[2];local d=bf[bc[3]];bf[(c+1)]=d;local k='';local l=u[bc[5]];if not(y(l)~="\115\116\114\105\110\103")then do for p=1,#l,1 do k=k..j(b(i(l,p,p),f));end;end local l='';for p=1,#k,1 do l=(l..j(b(i(k,p,p),f)));end;local p,v=ba(function(p,p)return d[l];end);local v,x=ba(function(v,v)return d[k];end);if p and y(d[l])==h then u[bc[5]]=l;elseif(v and y(d[k])==h)then u[bc[5]]=k;end;end;bf[c]=d[u[bc[5]]];end;elseif bd<57 then local c=w[bc[3]];local d;local h={};d=o({},{['\95\95\105\110\100\101\120']=function(k,k)local k=h[k];return k[1][k[2]];end,['\95\95\110\101\119\105\110\100\101\120']=function(k,k,l)local k=h[k];k[1][k[2]]=l;end});while true do for k=1,bc[5],1 do z=z+1;local l=q[z];if l[1]==38 then h[(k-1)]={bf,l[3],nil,nil,nil};elseif l[1]==22 then h[(k-1)]={r,l[3],nil,nil};end;be[(#be+1)]=h;end;break end bf[bc[2]]=e(c,d,s);else local c=bc[2];do return t(bf,c,bb)end;end;elseif(bd<=59)then if bd>58 then bf[bc[2]]=u[bc[3]]/u[bc[5]];else bf[bc[2]]=u[bc[3]]/u[bc[5]];end;elseif(60>bd or 60==bd)then local c=bc[2]if bf[c]then local d,h=a(bf[c](t(bf,(c+1),bc[3])))bb=h+c-1 local h=0;for k=c,bb do h=h+1;bf[k]=d[h];end;end;elseif bd<62 then bf[bc[2]]=e(w[bc[3]],nil,s);else local c=bc[2]bf[c]=bf[c](bf[c+1]);end;elseif(bd<=67)then if(64>=bd)then if bd<64 then local c=bc[2]bf[c]=bf[c](t(bf,c+1,bc[3]));else local c=bc[2]if bf[c]then local a,d=a(bf[c](bf[c+1]))do bb=(d+c-1)end local d=0;for h=c,bb do d=d+1;bf[h]=a[d];end;end;end;elseif 65>=bd then local a='';local c=u[bc[3]];if y(c)=="\115\116\114\105\110\103"then for d=1,#c,1 do a=a..j(b(i(c,d,d),f));end;else a=u[bc[3]];end;bf[bc[2]]=a;elseif not(bd~=66)then local a=bc[2];do return bf[a](t(bf,a+1,bb))end;else local a=bc[2]bf[a]=bf[a]();end;elseif(69>=bd)then if 69>bd then local a=w[bc[3]];local c;local d={};c=o({},{['\95\95\105\110\100\101\120']=function(h,h)local h=d[h];return h[1][h[2]];end,['\95\95\110\101\119\105\110\100\101\120']=function(h,h,k)local h=d[h];h[1][h[2]]=k;end});for h=1,bc[5],1 do repeat z=z+1;until true local k=q[z];if k[1]==38 then d[(h-1)]={bf,k[3],nil};elseif not(k[1]~=22)then d[(h-1)]={r,k[3],nil,nil};end;be[#be+1]=d;end;bf[bc[2]]=e(a,c,s);else z=bc[3];end;elseif(bd<70 or bd==70)then local a='';local c=u[bc[3]];if not(y(c)~=g)then for d=1,#c,1 do a=a..j(b(i(c,d,d),f));end;local b,c=ba(function(b,b)return bf[bc[2]][a];end);if b then u[bc[3]]=a;end;end;bf[bc[2]][u[bc[3]]]=u[bc[5]];elseif(bd>71)then bf[bc[2]]=false;else bf[bc[2]]={};end;z=(z+1);end;end;end;e(m(),{},n())();end)('21R1T21R27621Q21M27621R22322M22L22B22I21Q21L27A22222922722M22K22C21Q21K27A23022B22E22J22E22922G27721D27A23422522E22G27X22M22B23F22M22A22M22G22I21O27A28H21R27827A23122M27Y28F27A24723M2151C23J21Q21J27S22822H22322I22922I22J28J27H27A23H22522822C29228K27623622822J22I22B21Q21I27A22022822522C22427M22K27G21G27A23C28B22I23422L22D22I22K22322428W27A23322F21Y22422E22K28821Q28G29F22M22729E21R23D22B22829P21Q28127623422222322J2AQ2251V29Y21X22I22L22821Q21F27A29G29I22B23G2282292912BF2AM23022827K22J2AM22428C22B29K27I27628A28C28E21Q21N27A22G29Z21Q21H29X22I22323022I2252212AE27G27R27623322B22M21Y2C82A729W2762372282AF22B2CF2CH2C829L27A23G22F22M22527N2912252972762302AC29122A2AM23E2212922232C227A23D22E22522I2C72C92CT2C327623D28828928B28D27G2AT21R22F2AQ22C22A2C529Z2232DX2BM2DN21R22O22O22929Z2CP29K2CL21R29322022K22K2AP2242222DI21P27A21P2EO2762AI28H25R102D321R27K29T22C28H21128H27I26P21Q2352F421R2F821Q27A21L1K28J21R27R2FC2FC21N2FC2762FI27627I2F82F627A23B21R2FS2EP1R2FG2FM2FP2FA2FV2G02172G328I2762ER2FG27A26B21Q1S2G72GE2G92BS2EO2142GA21R2FL27A2GK2FM27I2GE2GC27A1B21R2GT2G72G92FC2G928I2ER28G2H12762BY2G721R2792FJ28H28G27927A1621R2H521R2GR2GW2G02FU2GX27A1M27A2G02AM2A827622322822422328427Y21Q2EE2332AE22C2222272DA2DC21Q21A2BZ2C52EA2E02EC2E02E329H2B727A23A22922129B2DJ2C82DB2D22BS2EY27L27N2F127A2GE29X2HH2G72812ET27A1Q2J32772HH21221R28G2G02HJ2GM2G7112JD2J32ER27I25H2JK2G82FY25G2J92HJ2C32JO2152FG2JS2GN2762JX2FM2FU2JO28I2FU2JS28H21P1G2H821P2JC28G2J623G2JK2H02G12JO2ET21P2JR2JH2FP2JV21R2132JY2GM2G02KT2K321R2K528H2K72G72HQ2JA2FT2KZ2G72L22K62L728I1Y21R2K82G72J628H2H72EP2H82J92792HE2F92HI2792IV21R2182JP28H2HG2LH21R2L42GL2HG2G82J12H228H2JF2GY28H25F21Q1H2G72MC2F927A21E2FZ2KV2MG2GA27I2MC2MA2L62MO2EP2KB2GY2JC2L52HH122GL27A2KM2ML21R2MN2G027R2MQ2LL21R28X28I28G2LJ2FG27I2LS2762HA2G727R2N928H29M2E627A29W2BY2ER2FC2MH28I2HB2AT2192MI21C2761F2MI21B2M62FG2IC2HR2FG2NX2O72FC2LU28I2B82M721R2G52162O42NE2G72K22JT2M52FG2GK27A182MI2KT2KN2JK2MU276102FG2H42762NX2HB2F321R2OI2HB2102O42FC1Z2PA21R2LD2LK2FC1X2J92BY1W2G72LO2M52NH2JH2EO2G92KD2JK1V2EP2JC2BY2OQ2HH2FY2791U2PW2JG2752FP172FH2MI2FM1P2LK27A23J2JG2CD2HC2QD27I2EO2J62M02G0',':(%d*):',"\117\115\101\114\100\97\116\97",{},34,"\115\116\114\105\110\103","\102\117\110\99\116\105\111\110");end;