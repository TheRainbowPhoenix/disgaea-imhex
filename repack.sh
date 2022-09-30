echo "repack BASLUS-2066600 to new.ps2"

cp new.ps2 new.ps2.bak

mymcplus -i new.ps2 remove  BASLUS-2066600/BASLUS-2066600
mymcplus -i new.ps2 add -d BASLUS-2066600 BASLUS-2066600
mymcplus -i new.ps2 ls BASLUS-2066600
