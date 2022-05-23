echo off & title biteable image resizer & color a
mkdir "%~n1" & copy "%~1" "%~n1" & cd "%~n1" & cls
mkdir "Email & Blog" "Facebook" "Google Display" "Instagram" "LinkedIn" "Pinterest" "Twitter" "YouTube"
set/a number=0& set progessbar==& set width=1200& set height=600&set name=blog-header
cd "Email & Blog"

:createFile
magick convert %1 -gravity center -crop %width%:%height% Orginal%~x1
cls & echo %progessbar% & set progessbar=%progessbar%=& echo %number% : %name% created
magick Orginal%~x1 -resize %width%x%height%^ %name%%x%-%width%x%height%%~x1
cls & echo %progessbar% & set progessbar=%progessbar%=& echo %number% : %name% resized to %width%x%height% 
del Orginal%~x1 & set/a number=number+1

if %number% == 1 (set width=750& set height=750& set name=blog-image)
if %number% == 2 (set width=600& set height=200& set name=email-header)

if %number% == 3 (set width=600& set height=600& set name=ad-carousel& cd ../"Facebook")
if %number% == 4 (set width=1200& set height=628& set name=ad-link)
if %number% == 5 (set width=1920& set height=1080& set name=event-cover)
if %number% == 6 (set width=1640& set height=859& set name=group-cover)
if %number% == 7 (set width=1200& set height=628& set name=news-feed)
if %number% == 8 (set width=820& set height=312& set name=page-cover)
if %number% == 9 (set width=180& set height=180& set name=profile-image)
if %number% == 10 (set width=1200& set height=630& set name=shared-image)
if %number% == 11 (set width=1080& set height=1920& set name=story)
if %number% == 12 (set width=1080& set height=1350& set name=vertical-post)

if %number% == 13 (set width=468& set height=68& set name=banner& cd ../"Google Display")
if %number% == 14 (set width=300& set height=400& set name=half-banner)
if %number% == 15 (set width=300& set height=600& set name=half-page)
if %number% == 16 (set width=336& set height=280& set name=large-rectangle)
if %number% == 17 (set width=728& set height=90& set name=leaderboard)
if %number% == 18 (set width=300& set height=250& set name=medium-rectangle)
if %number% == 19 (set width=120& set height=600& set name=skyscraper)
if %number% == 20 (set width=160& set height=600& set name=wide-skyscraper)

if %number% == 21 (set width=1080& set height=566& set name=horizontal-post& cd ../"Instagram")
if %number% == 22 (set width=110& set height=110& set name=profile-image)
if %number% == 23 (set width=1080& set height=1080& set name=square-post)
if %number% == 24 (set width=1080& set height=1920& set name=story)
if %number% == 25 (set width=161& set height=161& set name=thumbnail)
if %number% == 26 (set width=1080& set height=1350& set name=vertical-post)

if %number% == 27 (set width=1536& set height=768& set name=company-background& cd ../"LinkedIn")
if %number% == 28 (set width=646& set height=220& set name=company-banner)
if %number% == 29 (set width=1128& set height=376& set name=company-hero)
if %number% == 30 (set width=300& set height=300& set name=company-logo)
if %number% == 31 (set width=1200& set height=628& set name=linkedin-image)
if %number% == 32 (set width=1584& set height=396& set name=personal-background)
if %number% == 33 (set width=400& set height=400& set name=profile-image)
if %number% == 34 (set width=1140& set height=736& set name=square-image)
if %number% == 35 (set width=60& set height=60& set name=square-logo)

if %number% == 36 (set width=222& set height=150& set name=big-thumbnail& cd ../"Pinterest")
if %number% == 37 (set width=222& set height=150& set name=board-cover)
if %number% == 38 (set width=800& set height=1200& set name=pin)
if %number% == 39 (set width=165& set height=165& set name=profile-image)
if %number% == 40 (set width=55& set height=55& set name=small-thumbnail)

if %number% == 41 (set width=1500& set height=500& set name=header& cd ../"Twitter")
if %number% == 42 (set width=440& set height=220& set name=in-stream-photo)
if %number% == 43 (set width=800& set height=418& set name=link-with-image)
if %number% == 44 (set width=400& set height=400& set name=profile-image)
if %number% == 45 (set width=1200& set height=675& set name=share-image)
if %number% == 46 (set width=1024& set height=512& set name=website-card)

if %number% == 47 (set width=2560& set height=1140& set name=banner& cd ../"YouTube")
if %number% == 48 (set width=2560& set height=1440& set name=channel-art)
if %number% == 49 (set width=800& set height=800& set name=channel-icon)
if %number% == 50 (set width=1280& set height=720& set name=thumbnail)

if %number% == 51 (cls & echo Finished! & pause & exit)
goto createFile