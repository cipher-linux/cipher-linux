#!/bin/bash
BAT="/sys/class/power_supply/BAT0"
[ -d "$BAT" ] || BAT=$(find /sys/class/power_supply -maxdepth 1 -name "BAT*" | head -n1)

CAPACITY=$(cat "$BAT/capacity" 2>/dev/null || echo 0)
STATUS=$(cat "$BAT/status" 2>/dev/null || echo "Unknown")

FILL_W=$(awk -v p="$CAPACITY" 'BEGIN { printf "%.1f", (p/100)*22 }')

BOLT=""
if [ "$STATUS" = "Charging" ]; then
  BOLT='<path d="M8 5 L4 12 L6.5 12 L5 19 L10 11 L7.3 11 Z" fill="#48D9F5"/>'
fi

OUT="/tmp/cipher-battery-genmon.svg"
cat > "$OUT" << SVG
<svg xmlns="http://www.w3.org/2000/svg" width="40" height="24" viewBox="0 0 40 24">
${BOLT}
<rect x="11" y="8" width="26" height="12" rx="2.5" fill="none" stroke="#ffffff" stroke-width="1.8"/>
<rect x="37" y="11.5" width="2" height="5" rx="1" fill="#ffffff"/>
<rect x="13" y="10" width="${FILL_W}" height="8" rx="1.2" fill="#48D9F5"/>
</svg>
SVG

echo "<img>${OUT}</img><txt> ${CAPACITY}%</txt><tool>Battery: ${CAPACITY}% (${STATUS})</tool>"
