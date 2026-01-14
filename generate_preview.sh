#!/bin/bash
set -e

WIDTH=1920
HEIGHT=1080
BG_COLOR="#F8F6FF"
FG_COLOR="#4A4458"
ACCENT="#9B8EC5"
TERMINAL_BG="#1E1E2E"
EDITOR_BG="#1E1E2E"
FILEMGR_BG="#1E1E2E"

# Create base background
magick -size ${WIDTH}x${HEIGHT} xc:"$BG_COLOR" \
    -fill "rgba(155,142,197,0.05)" \
    -draw "rectangle 0,0,${WIDTH},${HEIGHT}" \
    preview_base.png

# Function to create window with shadow (no text)
create_window() {
    local width=$1
    local height=$2
    local x=$3
    local y=$4
    local bg=$5
    
    # Create shadow
    magick -size $((width+30))x$((height+30)) xc:none \
        -fill "rgba(74,68,88,0.12)" \
        -draw "roundrectangle 15,15,$((width+14)),$((height+14)),24,24" \
        shadow.png
    
    # Create main window with rounded corners
    magick -size ${width}x${height} xc:"$bg" \
        -bordercolor "$ACCENT" -border 1 \
        -fill "rgba(255,255,255,0.03)" \
        -draw "roundrectangle 1,1,$((width-2)),$((height-2)),15,15" \
        window.png
    
    # Title bar
    magick window.png \
        -fill "$bg" \
        -draw "roundrectangle 0,0,${width},40,15,0" \
        -fill "rgba(0,0,0,0.15)" \
        -draw "rectangle 0,39,${width},40" \
        window_title.png
    
    # Window controls - colored circles
    magick window_title.png \
        -fill "#FF5F56" -draw "circle 28,20 38,20" \
        -fill "#FFBD2E" -draw "circle 53,20 63,20" \
        -fill "#27CA40" -draw "circle 78,20 88,20" \
        window_done.png
    
    # Composite shadow + window
    magick shadow.png window_done.png -geometry +15+15 -composite \
        shadow_window.png
    
    # Add to main canvas
    magick preview_base.png shadow_window.png -geometry +${x}+${y} -composite \
        preview_base.png
    
    rm -f window_*.png shadow.png shadow_window.png
}

# Create three windows
create_window 560 380 120 180 "$TERMINAL_BG"
create_window 600 450 660 100 "$EDITOR_BG"
create_window 480 380 1250 200 "$FILEMGR_BG"

# Add terminal content simulation (colorful lines)
magick preview_base.png \
    -fill "#CDD6F4" \
    -draw "rectangle 150,230 170,235" \
    -fill "#A6E3A1" \
    -draw "rectangle 180,230 500,235" \
    -fill "#F9E2AF" \
    -draw "rectangle 150,255 550,260" \
    -fill "#CBA6F7" \
    -draw "rectangle 150,280 400,285" \
    -fill "#89B4FA" \
    -draw "rectangle 150,305 600,310" \
    -fill "#F5E0DC" \
    -draw "rectangle 150,330 350,335" \
    -fill "#CDD6F4" \
    -draw "rectangle 150,355 480,360" \
    preview_terminal.png

# Add code editor content simulation
magick preview_terminal.png \
    -fill "#45475A" \
    -draw "rectangle 700,170 720,175" \
    -fill "#CBA6F7" \
    -draw "rectangle 730,170 900,175" \
    -fill "#45475A" \
    -draw "rectangle 700,195 720,200" \
    -fill "#89B4FA" \
    -draw "rectangle 730,195 820,200" \
    -fill "#A6E3A1" \
    -draw "rectangle 860,195 920,200" \
    -fill "#45475A" \
    -draw "rectangle 700,220 720,225" \
    -fill "#FAB387" \
    -draw "rectangle 730,220 780,225" \
    -fill "#CDD6F4" \
    -draw "rectangle 790,220 950,225" \
    -fill "#45475A" \
    -draw "rectangle 700,245 720,250" \
    -fill "#F9E2AF" \
    -draw "rectangle 730,245 800,250" \
    -fill "#CDD6F4" \
    -draw "rectangle 810,245 1050,250" \
    -fill "#45475A" \
    -draw "rectangle 700,270 720,275" \
    -fill "#F5E0DC" \
    -draw "rectangle 730,270 870,275" \
    preview_code.png

# Add file manager content simulation
magick preview_code.png \
    -fill "#313244" \
    -draw "rectangle 1280,270 1300,275" \
    -fill "#89B4FA" \
    -draw "rectangle 1310,270 1400,275" \
    -fill "#313244" \
    -draw "rectangle 1280,295 1300,300" \
    -fill "#89B4FA" \
    -draw "rectangle 1310,295 1380,300" \
    -fill "#313244" \
    -draw "rectangle 1280,320 1300,325" \
    -fill "#F9E2AF" \
    -draw "rectangle 1310,320 1450,325" \
    -fill "#313244" \
    -draw "rectangle 1280,345 1300,350" \
    -fill "#89B4FA" \
    -draw "rectangle 1310,345 1420,350" \
    preview_files.png

# Use Python/PIL for text rendering instead
python3 << 'PYTHON'
from PIL import Image, ImageDraw, ImageFont
import math

WIDTH, HEIGHT = 1920, 1080
BG_COLOR = (248, 246, 255)  # #F8F6FF
FG_COLOR = (74, 68, 88)     # #4A4458
ACCENT = (155, 142, 197)    # #9B8EC5

img = Image.open('/home/godstorm91/project/pastelizard/omarchy-pastelizard-theme/preview_files.png')
draw = ImageDraw.Draw(img)

# Try to use a system font, fall back to default
try:
    title_font = ImageFont.truetype("/usr/share/fonts/noto/NotoSans-Regular.ttf", 72)
    subtitle_font = ImageFont.truetype("/usr/share/fonts/noto/NotoSans-Regular.ttf", 24)
    window_font = ImageFont.truetype("/usr/share/fonts/noto/NotoSans-Regular.ttf", 14)
except:
    title_font = ImageFont.load_default()
    subtitle_font = ImageFont.load_default()
    window_font = ImageFont.load_default()

# Draw title
title = "Pastelizard"
bbox = draw.textbbox((0, 0), title, font=title_font)
title_w = bbox[2] - bbox[0]
draw.text(((WIDTH - title_w) / 2, 55), title, fill=FG_COLOR, font=title_font)

# Draw subtitle
subtitle = "Omarchy Theme for Linux"
bbox = draw.textbbox((0, 0), subtitle, font=subtitle_font)
sub_w = bbox[2] - bbox[0]
draw.text(((WIDTH - sub_w) / 2, 145), subtitle, fill=ACCENT, font=subtitle_font)

# Draw decorative line
draw.line([(870, 130), (1050, 130)], fill=ACCENT, width=2)

# Draw window titles
draw.text((145, 183), "Terminal", fill=(200, 200, 200), font=window_font)
draw.text((700, 133), "main.py", fill=(200, 200, 200), font=window_font)
draw.text((1290, 233), "Files", fill=(200, 200, 200), font=window_font)

# Draw sidebar in file manager
draw.rectangle([1280, 260, 1320, 550], fill=(40, 40, 60))
draw.rectangle([1285, 265, 1315, 270], fill=(100, 100, 120))
draw.rectangle([1285, 275, 1315, 280], fill=(100, 100, 120))
draw.rectangle([1285, 285, 1315, 290], fill=(100, 100, 120))

# Draw file grid icons
for i in range(4):
    for j in range(3):
        x = 1340 + j * 100
        y = 270 + i * 70
        draw.ellipse([x, y, x+40, y+40], fill=(70, 70, 90))
        draw.rectangle([x+5, y+30, x+35, y+35], fill=(90, 90, 110))

img.save('/home/godstorm91/project/pastelizard/omarchy-pastelizard-theme/preview.png')
print("Preview created successfully!")
PYTHON

rm -f preview_*.png
echo "Done!"
