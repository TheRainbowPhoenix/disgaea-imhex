# Create rom file

```
cp digd_uwu.ps2 new.ps2
mymcplus -i digd_uwu.ps2 extract -d BASLUS-2066600 BASLUS-2066600
mymcplus -i new.ps2 remove  BASLUS-2066600/BASLUS-2066600

#edit your exported file here

mymcplus -i new.ps2 add BASLUS-2066600 -d BASLUS-2066600
mymcplus -i new.ps2 ls BASLUS-2066600
```

# ImHex pattern location

/home/deck/.var/app/net.werwolv.ImHex/data/imhex/patterns/

pattern is in
/home/deck/.var/app/net.werwolv.ImHex/data/imhex/patterns/disgaea_ps2_save.hexpat
