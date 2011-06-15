
 wm####################
#Editado: 17-may-2011
#Mote:  statusbar
#Archivo: ~/.config/status.sh
#!/bin/sh
####################

### Colores
  # Verde      #CCFF72
  # Blanco     #FFFFFF
  # Azul       #8DD3FF798a7c
  # Rojo       #FF7783
  # Amarillo   #FBFA85
  ####################

### Hora y Fecha
  # Hora
   sys_hour="`date '+%H:%M'`"

  # Fecha
   #sys_date="`date '+%a %d %b %Y'`"

 DATE="\\#535353\\ \\#77bbb5\\$sys_hour \\#535353\\"
  ####################

### Kernel
   sys_ker="`uname -r`"

 KER="\\#535353\\ \\#798a7c\\ \\#d0d293\\$sys_ker \\#535353\\"
  ####################

### Disco Duro
  # Espacio Usado
   sys_sdau=$(df -h / | awk '/\/$/{print $3}')

  # Espacio Libre
   sys_sdaf=$(df -h / | awk '/\/$/{print $4}')

 SDA="\\#535353\\ \\#bb77a4\\"HD:" \\#FFFFFF\\$sys_sdau\\#535353\\/\\#FFFFFF\\$sys_sdaf \\#535353\\" 
  ####################
  
### Procesador
 sys_cpu=$(eval $(awk '/^cpu0 /{print "previdle=" $5 "; prevtotal=" $2+$3+$4+$5 }' /proc/stat);
          sleep 0.4;
          eval $(awk '/^cpu0 /{print "idle=" $5 "; total=" $2+$3+$4+$5 }' /proc/stat);
          intervaltotal=$((total-${prevtotal:-0}));
          echo "$((100*( (intervaltotal) - ($idle-${previdle:-0}) ) / (intervaltotal) ))")
 sys_cpu1=$(eval $(awk '/^cpu1 /{print "previdle=" $5 "; prevtotal=" $2+$3+$4+$5 }' /proc/stat);
          sleep 0.4;
          eval $(awk '/^cpu1 /{print "idle=" $5 "; total=" $2+$3+$4+$5 }' /proc/stat);
          intervaltotal=$((total-${prevtotal:-0}));
          echo "$((100*( (intervaltotal) - ($idle-${previdle:-0}) ) / (intervaltotal) ))")

 CPU="\\#535353\\ \\#9aacc3\\"CPU0" \\#FFFFFF\\$sys_cpu% \\#9aacc3\\"CPU1" \\#FFFFFF\\$sys_cpu1% \\#535353\\"
  ####################
  
  #### MPD
 
    sys_mpd=`mpc | head -n1`
 
   MPD="\\#535353\\MPD>> \\#d0d293\\$sys_mpd \\#535353\\"
 
 ####################

### Memoria RAM
 sys_mem="`free -m | grep "buffers/" | awk {'print $3'}`"
 
 MEM="\\#535353\\ \\#9f6767\\"RAM:" \\#FFFFFF\\$sys_mem \\#535353\\"
  ####################
  
      sys_vol=`amixer | grep "Master" -A 5 | grep -o "\[.*%" | sed "s/\[//"`

   VOL="\\#535353\\ \\#d78700\\"vol:" \\#ffffff\\$sys_vol \\#535353\\"
  
  TEMP=$(acpi -t | awk '{print $4}' | tr -d '.0')

### salida del statusbar: [kernel] [disco duro:usado/libre] [porcentaje cpu] [memoria ram] [fecha - hora]
 wmfs -s " $MPD|$MEM|$CPU|$SDA|$DATE<"