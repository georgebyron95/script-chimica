#!/bin/tcsh 
#PBS -l select=1:ncpus=16 -q q02hoffmann -N frame
#
#   Setup - gaussian and working.
#
setenv gdvroot /cm/shared/gaussian/gdv.h37p/intel64-sandybridge
setenv GAUSS_EXEDIR $gdvroot/gdv
source $gdvroot/gdv/bsd/gdv.login
if( ! -e /local/scratch/smart01/gauscr) then 
  mkdir /local/scratch/smart01/gauscr
endif
setenv GAUSS_SCRDIR /local/scratch/smart01/gauscr
setenv wrkdir /home/smart01/working/h37
setenv GauCmd "gdv -exedir=$wrkdir/exe-dir:/cm/shared/gaussian/gdv.h37p/intel64-sandybridge/gdv/bsd:/cm/shared/gaussian/gdv.h37p/intel64-sandybridge/gdv/local:/cm/shared/gaussian/gdv.h37p/intel64-sandybridge/gdv/extras:/cm/shared/gaussian/gdv.h37p/intel64-sandybridge/gdv/"
#
#   Move in the right directory:
#
cd /home/smart01/MLAT/MD/conf2/OPT-ROT
rm -rf /local/scratch/smart01/1cartella
cp -r 1cartella/ /local/scratch/smart01
cd /local/scratch/smart01/1cartella

 $GauCmd frame0.com frame0.log
 $GauCmd frame1.com frame1.log
 $GauCmd frame2.com frame2.log
 $GauCmd frame3.com frame3.log
 $GauCmd frame4.com frame4.log
 $GauCmd frame5.com frame5.log
 $GauCmd frame6.com frame6.log
 $GauCmd frame7.com frame7.log
 $GauCmd frame8.com frame8.log
 $GauCmd frame9.com frame9.log
 $GauCmd frame10.com frame10.log
 $GauCmd frame11.com frame11.log
 $GauCmd frame12.com frame12.log
 $GauCmd frame13.com frame13.log
 $GauCmd frame14.com frame14.log
 $GauCmd frame15.com frame15.log
 $GauCmd frame16.com frame16.log
 $GauCmd frame17.com frame17.log
 $GauCmd frame18.com frame18.log
 $GauCmd frame19.com frame19.log
 $GauCmd frame20.com frame20.log
 $GauCmd frame21.com frame21.log
 $GauCmd frame22.com frame22.log
 $GauCmd frame23.com frame23.log
 $GauCmd frame24.com frame24.log
 $GauCmd frame25.com frame25.log
 $GauCmd frame26.com frame26.log
 $GauCmd frame27.com frame27.log
 $GauCmd frame28.com frame28.log
 $GauCmd frame29.com frame29.log
 $GauCmd frame30.com frame30.log
 $GauCmd frame31.com frame31.log
 $GauCmd frame32.com frame32.log
 $GauCmd frame33.com frame33.log
 $GauCmd frame34.com frame34.log
 $GauCmd frame35.com frame35.log
 $GauCmd frame36.com frame36.log
 $GauCmd frame37.com frame37.log
 $GauCmd frame38.com frame38.log
 $GauCmd frame39.com frame39.log
 $GauCmd frame40.com frame40.log
 $GauCmd frame41.com frame41.log
 $GauCmd frame42.com frame42.log
 $GauCmd frame43.com frame43.log
 $GauCmd frame44.com frame44.log
 $GauCmd frame45.com frame45.log
 $GauCmd frame46.com frame46.log
 $GauCmd frame47.com frame47.log
 $GauCmd frame48.com frame48.log
 $GauCmd frame49.com frame49.log
 $GauCmd frame50.com frame50.log
 $GauCmd frame51.com frame51.log
 $GauCmd frame52.com frame52.log
 $GauCmd frame53.com frame53.log
 $GauCmd frame54.com frame54.log
 $GauCmd frame55.com frame55.log
 $GauCmd frame56.com frame56.log
 $GauCmd frame57.com frame57.log
 $GauCmd frame58.com frame58.log
 $GauCmd frame59.com frame59.log
 $GauCmd frame60.com frame60.log
 $GauCmd frame61.com frame61.log
 $GauCmd frame62.com frame62.log
 $GauCmd frame63.com frame63.log
 $GauCmd frame64.com frame64.log
 $GauCmd frame65.com frame65.log
 $GauCmd frame66.com frame66.log
 $GauCmd frame67.com frame67.log
 $GauCmd frame68.com frame68.log
 $GauCmd frame69.com frame69.log
 $GauCmd frame70.com frame70.log
 $GauCmd frame71.com frame71.log
 $GauCmd frame72.com frame72.log
 $GauCmd frame73.com frame73.log
 $GauCmd frame74.com frame74.log
 $GauCmd frame75.com frame75.log
 $GauCmd frame76.com frame76.log
 $GauCmd frame77.com frame77.log
 $GauCmd frame78.com frame78.log
 $GauCmd frame79.com frame79.log
 $GauCmd frame80.com frame80.log
 $GauCmd frame81.com frame81.log
 $GauCmd frame82.com frame82.log
 $GauCmd frame83.com frame83.log
 $GauCmd frame84.com frame84.log
 $GauCmd frame85.com frame85.log
 $GauCmd frame86.com frame86.log
 $GauCmd frame87.com frame87.log
 $GauCmd frame88.com frame88.log
 $GauCmd frame89.com frame89.log
 $GauCmd frame90.com frame90.log
 $GauCmd frame91.com frame91.log
 $GauCmd frame92.com frame92.log
 $GauCmd frame93.com frame93.log
 $GauCmd frame94.com frame94.log
 $GauCmd frame95.com frame95.log
 $GauCmd frame96.com frame96.log
 $GauCmd frame97.com frame97.log
 $GauCmd frame98.com frame98.log
 $GauCmd frame99.com frame99.log
 $GauCmd frame100.com frame100.log
 $GauCmd frame101.com frame101.log
 $GauCmd frame102.com frame102.log
 $GauCmd frame103.com frame103.log
 $GauCmd frame104.com frame104.log
 $GauCmd frame105.com frame105.log
 $GauCmd frame106.com frame106.log
 $GauCmd frame107.com frame107.log
 $GauCmd frame108.com frame108.log
 $GauCmd frame109.com frame109.log
 $GauCmd frame110.com frame110.log
 $GauCmd frame111.com frame111.log
 $GauCmd frame112.com frame112.log
 $GauCmd frame113.com frame113.log
 $GauCmd frame114.com frame114.log
 $GauCmd frame115.com frame115.log
 $GauCmd frame116.com frame116.log
 $GauCmd frame117.com frame117.log
 $GauCmd frame118.com frame118.log
 $GauCmd frame119.com frame119.log
 $GauCmd frame120.com frame120.log
 $GauCmd frame121.com frame121.log
 $GauCmd frame122.com frame122.log
 $GauCmd frame123.com frame123.log
 $GauCmd frame124.com frame124.log
 $GauCmd frame125.com frame125.log
 $GauCmd frame126.com frame126.log
 $GauCmd frame127.com frame127.log
 $GauCmd frame128.com frame128.log
 $GauCmd frame129.com frame129.log
 $GauCmd frame130.com frame130.log
 $GauCmd frame131.com frame131.log
 $GauCmd frame132.com frame132.log
 $GauCmd frame133.com frame133.log
 $GauCmd frame134.com frame134.log
 $GauCmd frame135.com frame135.log
 $GauCmd frame136.com frame136.log
 $GauCmd frame137.com frame137.log
 $GauCmd frame138.com frame138.log
 $GauCmd frame139.com frame139.log
 $GauCmd frame140.com frame140.log
 $GauCmd frame141.com frame141.log
 $GauCmd frame142.com frame142.log
 $GauCmd frame143.com frame143.log
 $GauCmd frame144.com frame144.log
 $GauCmd frame145.com frame145.log
 $GauCmd frame146.com frame146.log
 $GauCmd frame147.com frame147.log
 $GauCmd frame148.com frame148.log
 $GauCmd frame149.com frame149.log
 $GauCmd frame150.com frame150.log
 $GauCmd frame151.com frame151.log
 $GauCmd frame152.com frame152.log
 $GauCmd frame153.com frame153.log
 $GauCmd frame154.com frame154.log
 $GauCmd frame155.com frame155.log
 $GauCmd frame156.com frame156.log
 $GauCmd frame157.com frame157.log
 $GauCmd frame158.com frame158.log
 $GauCmd frame159.com frame159.log
 $GauCmd frame160.com frame160.log
 $GauCmd frame161.com frame161.log
 $GauCmd frame162.com frame162.log
 $GauCmd frame163.com frame163.log
 $GauCmd frame164.com frame164.log
 $GauCmd frame165.com frame165.log
 $GauCmd frame166.com frame166.log
 $GauCmd frame167.com frame167.log
 $GauCmd frame168.com frame168.log
 $GauCmd frame169.com frame169.log
 $GauCmd frame170.com frame170.log
 $GauCmd frame171.com frame171.log
 $GauCmd frame172.com frame172.log
 $GauCmd frame173.com frame173.log
 $GauCmd frame174.com frame174.log
 $GauCmd frame175.com frame175.log
 $GauCmd frame176.com frame176.log
 $GauCmd frame177.com frame177.log
 $GauCmd frame178.com frame178.log
 $GauCmd frame179.com frame179.log
 $GauCmd frame180.com frame180.log
 $GauCmd frame181.com frame181.log
 $GauCmd frame182.com frame182.log
 $GauCmd frame183.com frame183.log
 $GauCmd frame184.com frame184.log
 $GauCmd frame185.com frame185.log
 $GauCmd frame186.com frame186.log
 $GauCmd frame187.com frame187.log
 $GauCmd frame188.com frame188.log
 $GauCmd frame189.com frame189.log
 $GauCmd frame190.com frame190.log
 $GauCmd frame191.com frame191.log
 $GauCmd frame192.com frame192.log
 $GauCmd frame193.com frame193.log
 $GauCmd frame194.com frame194.log
 $GauCmd frame195.com frame195.log
 $GauCmd frame196.com frame196.log
 $GauCmd frame197.com frame197.log
 $GauCmd frame198.com frame198.log
 $GauCmd frame199.com frame199.log
 $GauCmd frame200.com frame200.log
 $GauCmd frame201.com frame201.log
 $GauCmd frame202.com frame202.log
 $GauCmd frame203.com frame203.log
 $GauCmd frame204.com frame204.log
 $GauCmd frame205.com frame205.log
 $GauCmd frame206.com frame206.log
 $GauCmd frame207.com frame207.log
 $GauCmd frame208.com frame208.log
 $GauCmd frame209.com frame209.log
 $GauCmd frame210.com frame210.log
 $GauCmd frame211.com frame211.log
 $GauCmd frame212.com frame212.log
 $GauCmd frame213.com frame213.log
 $GauCmd frame214.com frame214.log
 $GauCmd frame215.com frame215.log
 $GauCmd frame216.com frame216.log
 $GauCmd frame217.com frame217.log
 $GauCmd frame218.com frame218.log
 $GauCmd frame219.com frame219.log
 $GauCmd frame220.com frame220.log
 $GauCmd frame221.com frame221.log
 $GauCmd frame222.com frame222.log
 $GauCmd frame223.com frame223.log
 $GauCmd frame224.com frame224.log
 $GauCmd frame225.com frame225.log
 $GauCmd frame226.com frame226.log
 $GauCmd frame227.com frame227.log
 $GauCmd frame228.com frame228.log
 $GauCmd frame229.com frame229.log
 $GauCmd frame230.com frame230.log
 $GauCmd frame231.com frame231.log
 $GauCmd frame232.com frame232.log
 $GauCmd frame233.com frame233.log
 $GauCmd frame234.com frame234.log
 $GauCmd frame235.com frame235.log
 $GauCmd frame236.com frame236.log
 $GauCmd frame237.com frame237.log
 $GauCmd frame238.com frame238.log
 $GauCmd frame239.com frame239.log
 $GauCmd frame240.com frame240.log
 $GauCmd frame241.com frame241.log
 $GauCmd frame242.com frame242.log
 $GauCmd frame243.com frame243.log
 $GauCmd frame244.com frame244.log
 $GauCmd frame245.com frame245.log
 $GauCmd frame246.com frame246.log
 $GauCmd frame247.com frame247.log
 $GauCmd frame248.com frame248.log
 $GauCmd frame249.com frame249.log
 $GauCmd frame250.com frame250.log

cd ..

rsync -avz 1cartella/ /home/smart01/MLAT/MD/conf2/OPT-ROT/1cartella
rm -r 1cartella/

exit

