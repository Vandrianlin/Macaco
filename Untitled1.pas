program RPG_BUEDA_FIXOLAS_XPTO_RADICAL;
uses crt;
var mana,ammo,shield,rngb,hcrit,i:integer;
hcst,wcst,pcst,pcsttgt,menuchr,ya:char;
hpb1,hpb2,hpb3,hpbb,hp1,hp2,hp3,hpb:real;

Procedure stats;
begin
hp1:=200;
hp2:=500;
hp3:=175;
hpb:=5000;
mana:=300;
ammo:=150;
shield:=200;
end;

Procedure ronda;
begin
gotoXY(100,4);
textcolor(white);
writeln('Ronda: ',i);
end;

Procedure basehealth;
begin
hpb1:=200;
hpb2:=500;
hpb3:=175;
hpbb:=5000;
end;

Procedure vitoria;
begin
clrscr;
gotoXY(50,13);
textcolor(green);
writeln('Parab',chr(130),'ns ganhaste !!!');
gotoXY(55,15);
writeln('Ronda: ',i);
gotoXY(40,27);
writeln ('Clique numa tecla para voltar ao menu inicial');
gotoXY(40,28);
ya:=readkey;
end;

Procedure derrota;
begin
clrscr;
gotoXY(58,13);
textcolor(red);
writeln('Perdeste...');
gotoXY(60,15);
writeln('Ronda: ',i);
gotoXY(40,27);
writeln ('Clique numa tecla para voltar ao menu inicial');
gotoXY(40,28);
ya:=readkey;
end;

Procedure Cenario;
begin
writeln('--------------------------------------------');
writeln('|-----O RPG BUEDA FIXOLAS XPTO RADICAL-----|');
writeln('--------------------------------------------');
writeln('|                                          |');
writeln('|   ____   _                      ____     |');
writeln('|  |    | |1|                    |    |    |');
writeln('|   ____   _                       __      |');
writeln('|  |    | |2|                     |DG|     |');
writeln('|   ____   _                               |');
writeln('|  |    | |3|                              |');
writeln('|                                          |');
writeln('|                                          |');
writeln('--------------------------------------------');
end;

Procedure Hud;
begin
gotoXY (46,1);
textcolor(white);
writeln('--------------------------------------------');
gotoxy (46,2);
  write('| Ca',chr(135),'ador (1) |');
  textcolor(yellow);
  write('Ammo: ',ammo);
  textcolor(white);
  gotoXY(89,2);
  writeln('|');
gotoXY (46,3);
writeln('--------------------------------------------');
gotoxy (46,4);
  write('| Guerreiro (2) |');
  textcolor(darkgray);
  write('Rg: ',shield);
  textcolor(white);
  gotoXY(89,4);
  writeln('|');
gotoXY (46,5);
writeln('--------------------------------------------');
gotoxy (46,6);
  write('| Padre (3) |');
  textcolor(lightblue);
  write('M: ',mana);
  textcolor(white);
  gotoXY(89,6);
  writeln('|');
  gotoXY (46,7);
writeln('--------------------------------------------------------------------------');
end;


Procedure Hpbars;
begin
If hp1>=55 then begin
               gotoXY (5,6);
               textcolor(green);
               writeln(hp1:0:0);
               end;
If (hp1<55) and (hp1>25) then begin
                              gotoXY (5,6);
                              textcolor(yellow);
                              writeln(hp1:0:0);
                             end;
If hp1<=25 then begin
               gotoXY (5,6);
               textcolor (red);
               writeln(hp1:0:0);
               end;


If hp2>=150 then begin
               gotoXY (5,8);
               textcolor(green);
               writeln(hp2:0:0);
               end;
If (hp2<150) and (hp2>75) then begin
                              gotoXY (5,8);
                              textcolor(yellow);
                              writeln(hp2:0:0);
                             end;
If hp2<=75 then begin
               gotoXY (5,8);
               textcolor (red);
               writeln(hp2:0:0);
               end;


If hp3>=50 then begin
               gotoXY (5,10);
               textcolor(green);
               writeln(hp3:0:0);
               end;
If (hp3<50) and (hp3>25) then begin
                              gotoXY (5,10);
                              textcolor(yellow);
                              writeln(hp3:0:0);
                             end;
If hp3<=25 then begin
               gotoXY (5,10);
               textcolor (red);
               writeln(hp3:0:0);
               end;


If hpb>=500 then begin
               gotoXY (35,6);
               textcolor(green);
               writeln(hpb:0:0);
               end;
If (hpb<500) and (hpb>250) then begin
                              gotoXY (35,6);
                              textcolor(yellow);
                              writeln(hpb:0:0);
                             end;
If hpb<=250 then begin
               gotoXY (35,6);
               textcolor (red);
               writeln(hpb:0:0);
               end;
end;

Procedure abilidades;
begin
gotoXY(46,8);
textcolor(white);
write('|');
textcolor(yellow);
write('Ca',chr(135),'ador: (1)Tiro normal -50ammo/(2)Queima roupa/(3)Tiro preciso -100ammo');
textcolor(white);
writeln('|');
gotoxy(46,9);
writeln('--------------------------------------------------------------------------');
gotoxy(46,10);
textcolor(white);
write('|');
textcolor(darkgray);
write('Guerreiro: (1)Espadada /(2)Escudada -50rg/(3)TsuraneSanzu -500rg        ');
textcolor(white);
writeln('|');
gotoxy(46,11);
writeln('--------------------------------------------------------------------------');
gotoxy(46,12);
textcolor(white);
write('|');
textcolor(lightblue);
write('Padre: (1)Ben',chr(135),chr(198),'oC-100M/(2)Ben',chr(135),chr(198),'oM/(3)Ben',chr(135),chr(198),'oD-500M                       ');
textcolor(white);
write('|');
gotoxy(46,13);
writeln('--------------------------------------------------------------------------');
end;

Procedure boss;
begin
gotoXy(1,14);
write('|');
textcolor(red);
write('Drag',chr(198),'o: (1)Cura/ (2)Bafo de fogo/ (3)Mordida                                         ');
textcolor(white);
write(' | Ataque: ');
textcolor(white);
writeln('                     |');
gotoXY(1,15);
writeln('-----------------------------------------------------------------------------------------------------------------------');
end;


Procedure rnghcrit;
begin
randomize;
hcrit:=random(100)+1;
end;


Procedure rng;
begin
randomize;
rngb:=random(3)+1;
gotoxy(98,14);
textcolor(red);
write(rngb);
end;

Procedure casthud;
begin
gotoXY(1,17);
textcolor(white);
writeln('-----------------------------------------------------------------------------------------------------------------------');
gotoXY(1,16);
textcolor(white);
write('|');

If hp1>0 then begin
textcolor(yellow);
gotoXY(2,16);
write('Ca',chr(135),'ador  ( )');
gotoXY(12,16);
hcst:=readkey;
gotoXY(12,16);
write(hcst);
end;

If hp2>0 then begin
textcolor(darkgray);
gotoXY(15,16);
write('Guerreiro ( )');
gotoXY(26,16);
wcst:=readkey;
gotoXY(26,16);
write(wcst);
end;

If hp3>0 then begin
textcolor(lightblue);
gotoXY(29,16);
write('Padre ( )');
gotoXY(36,16);
pcst:=readkey;
gotoXY(36,16);
write(pcst);
if pcst='1' then begin
gotoxy(39,16);
write(' para-> ( )');
gotoXY(48,16);
pcsttgt:=readkey;
gotoXY(48,16);
write(pcsttgt);
end;
end;
end;

Procedure DanoPlr;
begin
case hcst of
'1': begin
     If (ammo>=50) then begin
                   ammo:=ammo-50;
                   hpb:=hpb-100;
                   end;
                   end;
'2': hpb:=hpb-50;
'3': begin
     If (ammo>=100) then begin
                    ammo:=ammo-100;
                    If (hcrit>=1) and (hcrit<=10) then hpb:=hpb-100
                                                  else If (hcrit>=11) and (hcrit<=70) then hpb:=hpb-250
                                                                                      else If (hcrit>=71) and (hcrit<=95) then hpb:=hpb-500
                                                                                                                          else If (hcrit>=96) and (hcrit<=100) then hpb:=hpb-1000;
                    end;
                    end;
                    end;
case wcst of
'1': hpb:=hpb-25;
'2': begin
     If (shield>=50) then begin
                     shield:=shield-50;
                     hpb:=hpb-100;
                     end;
                     end;
'3': begin
     If (shield>=500) then begin
                      shield:=shield-500;
                      If hpb<=2500 then hpb:=hpb-500
                                   else hpb:=hpb-100;
                      end;
                      end;
                      end;
case pcst of
'1': begin
     If (mana>=100) then begin case pcsttgt of
                               '1': If hp1>0 then begin
                                    mana:=mana-100;
                                    hp1:=hp1+((hpb1-hp1)*0.5);
                                    end;
                               '2': If hp2>0 then begin
                                    mana:=mana-100;
                                    hp2:=hp2+((hpb2-hp2)*0.5);
                                    end;
                               '3': If hp3>0 then begin
                                    mana:=mana-100;
                                    hp3:=hp3+((hpb3-hp3)*0.5);
                                    end;
                               end;
                               end;
                               end;
'2': hpb:=hpb-200;

'3': begin
     If (mana>=500) then begin
                         mana:=mana-500;
                         hpb1:=hpb1+(hpb1*0.5);
                         hpb2:=hpb2+(hpb2*0.5);
                         hpb3:=hpb3+(hpb3*0.5);
                         hp1:=hp1+(hpb1*0.5);
                         hp2:=hp2+(hpb2*0.5);
                         hp3:=hp3+(hpb3*0.5);
                         end;
                         end;
end;
end;

Procedure status;
begin
If hp1<=0 then begin
               gotoXY(83,2);
               textcolor(red);
               writeln('Morto');
               end
          else begin
               gotoXY(83,2);
               textcolor(green);
               writeln('Vivo');
               end;
If hp2<=0 then begin
               gotoXY(83,4);
               textcolor(red);
               writeln('Morto');
               end
          else begin
               gotoXY(83,4);
               textcolor(green);
               writeln('Vivo');
If hp3<=0 then begin
               gotoXY(83,6);
               textcolor(red);
               writeln('Morto');
               end
          else begin
               gotoXY(83,6);
               textcolor(green);
               writeln('Vivo');
               end;
end;
end;

Procedure danoboss;
begin
If rngb=1 then begin
     hpb:=hpb+((hpbb-hpb)*0.1);
     end;
If rngb=2 then begin
     hp1:=hp1-150;
     hp2:=hp2-150;
     hp3:=hp3-150;
     end;
If rngb=3 then If hp2>0 then hp2:=hp2-200
                              else If hp3>0 then hp3:=hp3-200
                                            else If hp1>0 then hp1:=hp1-200;

end;

Procedure resource;
begin
ammo:=ammo+50;
mana:=mana+150;
shield:=shield+75;
end;

procedure pre;
begin
cenario;
hpbars;
hud;
status;
abilidades;
boss;
rng;
ronda;
end;

procedure pos;
begin
hcst:='0';
wcst:='0';
pcst:='0';
pcsttgt:='0';
rnghcrit;
casthud;
danoboss;
danoplr;
resource;

end;

Procedure menu;
begin
clrscr;
writeln('---Rodrigo-Gralheira-n13-1PI-2021/2022----------------------------------------------------------------------------------');
writeln('|                                                O RPG BUEDA FIXE RADICAL                                               ');
writeln('------------------------------------------------------------------------------------------------------------------------');
gotoXY(58,13);
writeln('(1) Jogar ');
gotoXY(58,15);
writeln('(2) Info  ');
gotoXY(58,17);
writeln('(3) Sair  ');
gotoXY(1,29);
writeln('Vers',chr(198),'o Unica e Legitima');
gotoXY(58,19);
menuchr:=readkey;
end;

Procedure info;
begin
clrscr;
writeln('------------------------------------------------------------------------------------------------------------------------');
textcolor(yellow);
writeln('Ca',chr(135),'ador: Este personagem ',chr(130),' o que da mais dano a base de muni',chr(135),chr(198),'o e sorte ');
writeln('(1) Tiro Normal: Esta abilidade ',chr(130),' uma abilidade sem risco de uso ');
writeln('pois causa dano fixo e consome pouca muni',chr(135),chr(198),'o(ammo) causando 200 dano');
writeln('(2) Tiro barato que causa pouco dano serve para poupar muni',chr(135),chr(198),'o(ammo) e causa 50 dano');
writeln('(3) Tiro Preciso: Esta abilidade tem um alto risco e alta recompensa de uso');
writeln(' pois gasta muita muni',chr(135),chr(198),'o(ammo) podendo causar 100 a 1000 de dano dependendo da sorte');
writeln(' Stats base: 200 vida 150 muni',chr(135),chr(198),'o (ganha +50 por cada ronda');
textcolor(white);
writeln('------------------------------------------------------------------------------------------------------------------------');
textcolor(darkgray);
writeln('Guerreiro: Este personagem ',chr(130),' o mais resistente fazendo com que seja focado pelo oponente consumindo raiva ');
writeln('(1) Espadada: Esta abilidade n',chr(198),'o consome raiva e causa apenas 25 de dano');
writeln('(2) Escudada: Esta abilidade consome 50 de raiva e causa 100 de dano');
writeln('(3) TsuraneSanzu: Esta abilidade causa 100 de dano e consome 500 de escudo porem se o oponente estiver com a sua vida');
writeln(' abaixo de metade da sua vida causa 5x o dano');
writeln(' Stats base: 500 vida 200 Raiva (ganha +75 por cada ronda)');
textcolor(white);
writeln('------------------------------------------------------------------------------------------------------------------------');
textcolor(lightblue);
writeln('Padre: Este personagem ajuda os aliados consumindo Mana podendo curar adicionar vida maxima e ate atacar o oponente');
writeln('(1) Ben',chr(135),chr(198),'oC: recupera metade da vida perdida de um aliado ou a si mesmo gastando 100 Mana');
writeln('(2) Ben',chr(135),chr(198),'oM: causa 50 de dano no oponente n',chr(198),'o gastando mana');
writeln('(3) Ben',chr(135),chr(198),'oD: a vida base de toda a equipa aumenta pela sua metade e consome 500 mana');
writeln('Stats base: 175 vida 300 mana (ganha +150 por cada ronda)');
gotoXY(40,27);
textcolor(white);
writeln ('Clique numa tecla para voltar ao menu inicial');
gotoXY(40,28);
ya:=readkey;
end;

Procedure jogo;
begin
repeat
i:=i+1;
textcolor(white);
clrscr;
pre;
pos;
until (hpb<=0) or (hp1<=0) and (hp2<=0) and (hp3<=0);
If (hpb<=0) then begin
                 vitoria;
                 end;
If (hp1<=0) and (hp2<=0) and (hp3<=0) then begin
                                           derrota;
                                           end;
end;

procedure Nucleo;
begin
repeat
textcolor(white);
stats;
basehealth;
menu;
case menuchr of
'1': jogo;
'2': info;
end;
until menuchr>='3'
end;

begin
i:=0;
Nucleo;
end.
