#!/bin/bash
BAT="/sys/class/power_supply/BAT0"
[ -d "$BAT" ] || BAT=$(find /sys/class/power_supply -maxdepth 1 -name "BAT*" | head -n1)

CAPACITY=$(cat "$BAT/capacity" 2>/dev/null || echo 0)
STATUS=$(cat "$BAT/status" 2>/dev/null || echo "Unknown")

FILL_W=$(awk -v p="$CAPACITY" 'BEGIN { printf "%.1f", (p/100)*22 }')

CHARGE_DOT=""
if [ "$STATUS" = "Charging" ]; then
  CHARGE_DOT='<circle cx="16" cy="4" r="2.2" fill="#48D9F5"/>'
fi

OUT="/tmp/cipher-battery-genmon.svg"
cat > "$OUT" << SVG
<svg xmlns="http://www.w3.org/2000/svg" width="32" height="24" viewBox="0 0 32 24">
<rect x="3" y="8" width="26" height="12" rx="2.5" fill="none" stroke="#ffffff" stroke-width="1.8"/>
<rect x="29" y="11.5" width="2" height="5" rx="1" fill="#ffffff"/>
<rect x="5" y="10" width="${FILL_W}" height="8" rx="1.2" fill="#48D9F5"/>
${CHARGE_DOT}
</svg>
SVG

echo "<img>${OUT}</img><txt> ${CAPACITY}%</txt><tool>Battery: ${CAPACITY}% (${STATUS})</tool>"
