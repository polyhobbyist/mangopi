# Pin mapping
|Pi Header Number|Mango Pi Line Number|
|----------------|-----------|
|#22 |32|
|#23 |33|
|#16 |34|
|#20 |35|
|#21 |36|
|#18 |37|
|#19 |38|
|#4  |39|
|#5  |42|
|#6  |43|
|#13 |44|
|#CE0|106|
|#24 |110|
|#CE1|111|
|#26 |113|
|#27 |118|
|MISO|109|
| Blue Light near DVP | 114|


# Found Using 

```bash
 for ((i = 101 ; i < 120 ; i++ )); do echo $i; sudo gpioset --mode=time -s 5 0 $i=1; done
```


# gpiodetect

```
        line   0:      unnamed       unused   input  active-high
        line   1:      unnamed       unused   input  active-high
        line   2:      unnamed       unused   input  active-high
        line   3:      unnamed       unused   input  active-high
        line   4:      unnamed       unused   input  active-high
        line   5:      unnamed       unused   input  active-high
        line   6:      unnamed       unused   input  active-high
        line   7:      unnamed       unused   input  active-high
        line   8:      unnamed       unused   input  active-high
        line   9:      unnamed       unused   input  active-high
        line  10:      unnamed       unused   input  active-high
        line  11:      unnamed       unused   input  active-high
        line  12:      unnamed       unused   input  active-high
        line  13:      unnamed       unused   input  active-high
        line  14:      unnamed       unused   input  active-high
        line  15:      unnamed       unused   input  active-high
        line  16:      unnamed       unused   input  active-high
        line  17:      unnamed       unused   input  active-high
        line  18:      unnamed       unused   input  active-high
        line  19:      unnamed       unused   input  active-high
        line  20:      unnamed       unused   input  active-high
        line  21:      unnamed       unused   input  active-high
        line  22:      unnamed       unused   input  active-high
        line  23:      unnamed       unused   input  active-high
        line  24:      unnamed       unused   input  active-high
        line  25:      unnamed       unused   input  active-high
        line  26:      unnamed       unused   input  active-high
        line  27:      unnamed       unused   input  active-high
        line  28:      unnamed       unused   input  active-high
        line  29:      unnamed       unused   input  active-high
        line  30:      unnamed       unused   input  active-high
        line  31:      unnamed       unused   input  active-high
        line  32:      unnamed       unused   input  active-high
        line  33:      unnamed       unused   input  active-high
        line  34:      unnamed       unused   input  active-high
        line  35:      unnamed       unused   input  active-high
        line  36:      unnamed       unused   input  active-high
        line  37:      unnamed       unused   input  active-high
        line  38:      unnamed       unused   input  active-high
        line  39:      unnamed       unused   input  active-high
        line  40:      unnamed       kernel   input  active-high [used]
        line  41:      unnamed       kernel   input  active-high [used]
        line  42:      unnamed       unused   input  active-high
        line  43:      unnamed       unused   input  active-high
        line  45:      unnamed       unused   input  active-high
        line  46:      unnamed       unused   input  active-high
        line  47:      unnamed       unused   input  active-high
        line  48:      unnamed       unused   input  active-high
        line  49:      unnamed       unused   input  active-high
        line  50:      unnamed       unused   input  active-high
        line  51:      unnamed       unused   input  active-high
        line  52:      unnamed       unused   input  active-high
        line  53:      unnamed       unused   input  active-high
        line  54:      unnamed       unused   input  active-high
        line  55:      unnamed       unused   input  active-high
        line  56:      unnamed       unused   input  active-high
        line  57:      unnamed       unused   input  active-high
        line  58:      unnamed       unused   input  active-high
        line  59:      unnamed       unused   input  active-high
        line  60:      unnamed       unused   input  active-high
        line  61:      unnamed       unused   input  active-high
        line  62:      unnamed       unused   input  active-high
        line  63:      unnamed       unused   input  active-high
        line  64:      unnamed       kernel   input  active-high [used]
        line  65:      unnamed    ":status"  output  active-high [used]
        line  66:      unnamed       kernel   input  active-high [used]
        line  67:      unnamed       kernel   input  active-high [used]
        line  68:      unnamed       kernel   input  active-high [used]
        line  69:      unnamed       kernel   input  active-high [used]
        line  70:      unnamed       kernel   input  active-high [used]
        line  71:      unnamed       kernel   input  active-high [used]
        line  72:      unnamed       unused   input  active-high
        line  73:      unnamed       unused   input  active-high
        line  74:      unnamed       unused   input  active-high
        line  75:      unnamed       unused   input  active-high
        line  76:      unnamed       unused   input  active-high
        line  77:      unnamed       unused   input  active-high
        line  78:      unnamed       unused   input  active-high
        line  79:      unnamed       unused   input  active-high
        line  80:      unnamed       unused   input  active-high
        line  81:      unnamed       unused   input  active-high
        line  82:      unnamed       unused   input  active-high
        line  83:      unnamed       unused   input  active-high
        line  84:      unnamed       unused   input  active-high
        line  85:      unnamed       unused   input  active-high
        line  86:      unnamed       unused   input  active-high
        line  87:      unnamed       unused   input  active-high
        line  88:      unnamed       unused   input  active-high
        line  89:      unnamed       unused   input  active-high
        line  90:      unnamed       unused   input  active-high
        line  91:      unnamed       unused   input  active-high
        line  92:      unnamed       unused   input  active-high
        line  93:      unnamed       unused   input  active-high
        line  94:      unnamed       unused   input  active-high
        line  95:      unnamed       unused   input  active-high
        line  96:      unnamed       unused   input  active-high
        line  97:      unnamed       unused   input  active-high
        line  98:      unnamed       unused   input  active-high
        line  99:      unnamed       unused   input  active-high
        line 100:      unnamed       unused   input  active-high
        line 101:      unnamed       unused   input  active-high
        line 102:      unnamed       unused   input  active-high
        line 103:      unnamed       unused   input  active-high
        line 104:      unnamed       unused   input  active-high
        line 105:      unnamed       unused   input  active-high
        line 106:      unnamed       unused   input  active-high
        line 107:      unnamed       unused   input  active-high
        line 108:      unnamed       unused   input  active-high
        line 109:      unnamed       unused   input  active-high
        line 110:      unnamed       unused   input  active-high
        line 111:      unnamed       unused   input  active-high
        line 112:      unnamed       unused   input  active-high
        line 113:      unnamed       unused   input  active-high
        line 114:      unnamed       unused   input  active-high
        line 115:      unnamed       unused   input  active-high
        line 116:      unnamed "usb0_vbus_det" input active-high [used]
        line 117:      unnamed "usb0_id_det" input active-high [used]
        line 118:      unnamed       unused   input  active-high
        line 119:      unnamed       unused   input  active-high
        line 120:      unnamed       unused   input  active-high
        line 121:      unnamed       unused   input  active-high
        line 122:      unnamed       unused   input  active-high
        line 123:      unnamed       unused   input  active-high
        line 124:      unnamed       unused   input  active-high
        line 125:      unnamed       unused   input  active-high
        line 126:      unnamed       unused   input  active-high
        line 127:      unnamed       unused   input  active-high
        line 128:      unnamed       unused   input  active-high
        line 129:      unnamed       unused   input  active-high
        line 130:      unnamed       unused   input  active-high
        line 131:      unnamed       unused   input  active-high
        line 132:      unnamed       unused   input  active-high
        line 133:      unnamed       unused   input  active-high
        line 134:      unnamed       unused   input  active-high
        line 135:      unnamed       unused   input  active-high
        line 136:      unnamed       unused   input  active-high
        line 137:      unnamed       unused   input  active-high
        line 138:      unnamed       unused   input  active-high
        line 139:      unnamed       unused   input  active-high
        line 140:      unnamed       unused   input  active-high
        line 141:      unnamed       unused   input  active-high
        line 142:      unnamed       unused   input  active-high
        line 143:      unnamed       unused   input  active-high
        line 144:      unnamed       unused   input  active-high
        line 145:      unnamed       unused   input  active-high
        line 146:      unnamed       unused   input  active-high
        line 147:      unnamed       unused   input  active-high
        line 148:      unnamed       unused   input  active-high
        line 149:      unnamed       unused   input  active-high
        line 150:      unnamed       unused   input  active-high
        line 151:      unnamed       unused   input  active-high
        line 152:      unnamed       unused   input  active-high
        line 153:      unnamed       unused   input  active-high
        line 154:      unnamed       unused   input  active-high
        line 155:      unnamed       unused   input  active-high
        line 156:      unnamed       unused   input  active-high
        line 157:      unnamed       unused   input  active-high
        line 158:      unnamed       unused   input  active-high
        line 159:      unnamed       unused   input  active-high
        line 160:      unnamed       kernel   input  active-high [used]
        line 161:      unnamed       kernel   input  active-high [used]
        line 162:      unnamed       kernel   input  active-high [used]
        line 163:      unnamed       kernel   input  active-high [used]
        line 164:      unnamed       kernel   input  active-high [used]
        line 165:      unnamed       kernel   input  active-high [used]
        line 166:      unnamed       unused   input  active-high
        line 167:      unnamed       unused   input  active-high
        line 168:      unnamed       unused   input  active-high
        line 169:      unnamed       unused   input  active-high
        line 170:      unnamed       unused   input  active-high
        line 171:      unnamed       unused   input  active-high
        line 172:      unnamed       unused   input  active-high
        line 173:      unnamed       unused   input  active-high
        line 174:      unnamed       unused   input  active-high
        line 175:      unnamed       unused   input  active-high
        line 176:      unnamed       unused   input  active-high
        line 177:      unnamed       unused   input  active-high
        line 178:      unnamed       unused   input  active-high
        line 179:      unnamed       unused   input  active-high
        line 180:      unnamed       unused   input  active-high
        line 181:      unnamed       unused   input  active-high
        line 182:      unnamed       unused   input  active-high
        line 183:      unnamed       unused   input  active-high
        line 184:      unnamed       unused   input  active-high
        line 185:      unnamed       unused   input  active-high
        line 186:      unnamed       unused   input  active-high
        line 187:      unnamed       unused   input  active-high
        line 188:      unnamed       unused   input  active-high
        line 189:      unnamed       unused   input  active-high
        line 190:      unnamed       unused   input  active-high
        line 191:      unnamed       unused   input  active-high
        line 192:      unnamed       kernel   input  active-high [used]
        line 193:      unnamed       kernel   input  active-high [used]
        line 194:      unnamed       kernel   input  active-high [used]
        line 195:      unnamed       kernel   input  active-high [used]
        line 196:      unnamed       kernel   input  active-high [used]
        line 197:      unnamed       kernel   input  active-high [used]
        line 198:      unnamed       kernel   input  active-high [used]
        line 199:      unnamed       kernel   input  active-high [used]
        line 200:      unnamed       kernel   input  active-high [used]
        line 201:      unnamed       kernel   input  active-high [used]
        line 202:      unnamed       unused   input  active-high
        line 203:      unnamed       unused   input  active-high
        line 204:      unnamed      "reset"  output   active-low [used]
        line 205:      unnamed       unused   input  active-high
        line 206:      unnamed       unused   input  active-high
        line 207:      unnamed "device-wake" output active-high [used]
        line 208:      unnamed       unused   input  active-high
        line 209:      unnamed       unused   input  active-high
        line 210:      unnamed     "enable"  output  active-high [used]
        line 211:      unnamed       unused   input  active-high
        line 212:      unnamed       unused   input  active-high
        line 213:      unnamed       unused   input  active-high
        line 214:      unnamed       unused   input  active-high
        line 215:      unnamed       unused   input  active-high
        line 216:      unnamed       unused   input  active-high
        line 217:      unnamed       unused   input  active-high
        line 218:      unnamed       unused   input  active-high
        line 219:      unnamed       unused   input  active-high
        line 220:      unnamed       unused   input  active-high
        line 221:      unnamed       unused   input  active-high
        line 222:      unnamed       unused   input  active-high
        line 223:      unnamed       unused   input  active-high
```