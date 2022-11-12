### Firmwares

#### Bruteforce OK
```
moker@house:~/flipper/repos/Eng1n33r/flipperzero-firmware$ git tag | grep un1
un1-bcfb12 OK
```
#un1-d1c79a KO - no mre apps

### Debug diff
```
git log -p -U0 un1-bcfb12..origin/dev
git log -p -U0 un1-bcfb12..un1-d1c79a
```

```
moker@house:~/flipper/repos/Eng1n33r/flipperzero-firmware$ git tag | grep un1
# un1-0f9ea9 OK
# un4-0f9ea9 OK
# un1-e3a5df KO

dbf4b65d (tag: un1-e3a5df) update changelog
2ffb246e Merge branch 'fz-dev' into dev
e3a5df59 CLI: log command argument (#1817)
90eefeb2 Merge pull request #88 from jd-raymaker/dev
fda541c7 update changelog
?? 42494d80 fix merge issue
BUILDFAIL 1253a78d Merge branch 'fz-dev' into dev
d07c2dbe ".fap" extention in file browser and archive tab (#1812)
8f181265 CLI loader shows app name, rfid edit fix
38021710 Revert "Merge branch 'fz-dev' into dev"
03ad1770 Merge branch 'fz-dev' into dev
b86756b5 don't include example app in releases
11681d8e [FL-2866, FL-2865] SubGhz: add frequency analyzer history (#1810)
061f53cd [FL-2849] SubGhz: read RAW auto generation of names (#1772)
4bbeeb19 Merge branch 'fz-dev' into dev
61189c3c [FL-2847] FFF trailing space fix (#1811)
9bf11d9f [FL-2859,2838] fbt: improvements for FAPs (#1813)

KO c76fcf50 Merge branch 'fz-dev' into dev
007a11d7 upd ofw pr 1832
b61e4116 fix subghz double click after delete, fix rename bug, fix unirf
a69e150e [FL-2812] RFID: write fix for some protocols #1828
f16cdd14 fix: typo badusb demo windows (#1824)
ac286dfe fix subghz bruteforcer, change subghz raw naming
a93008b2 fix rfid fuzzer
31aaa593 fixes, rfid fuzzer still crashes
5a271966 fix archive, update changelog
adccb874 Added norwegian keyboard layout
693f78e5 update icon naming
BUILDFAIL 6eb61076 bump api version
BUILDFAIL 3e4d8a41 Remove string_push_uint64
BUILDFAIL c60bfbf2 oh no
BUILDFAIL 0796263e Merge branch 'fz-dev' into dev
MISSAPP 4bf29827 M LIB: non-inlined strings, FuriString primitive (#1795)
OK baf50348 Merge pull request #87 from derskythe/feat-add-subbrute-frequency
OK 04e16970 Add CAME 12bit 303MHz to SubBrute
OK a8b48771 (tag: un4-0f9ea9) rfid fuzzer, ability to change time delay

baf50348..c76fcf50
```


```
$ git --no-pager log -U0 -p baf50348..c76fcf50 applications/plugins/subbrute
```


```
moker@house:~/flipper/repos/Eng1n33r/flipperzero-firmware$ git --no-pager log --decorate --oneline un1-0f9ea9..un1-e3a5df 
```





```
moker@house:~/flipper/repos/Eng1n33r/flipperzero-firmware$ git show un1-0f9ea9 | grep ^commit
commit 2288855163796c8c4aaca3e5600aa8a02ecbb978

moker@house:~/flipper/repos/Eng1n33r/flipperzero-firmware$ git show un1-e3a5df | grep ^commit
commit dbf4b65d8459180113df4f4ccd5c10e51a3034ce

moker@house:~/flipper/repos/Eng1n33r/flipperzero-firmware$ git log -p 2288855163796c8c4aaca3e5600aa8a02ecbb978..dbf4b65d8459180113df4f4ccd5c10e51a3034ce

moker@house:~/flipper/repos/Eng1n33r/flipperzero-firmware$ git log --oneline 2288855163796c8c4aaca3e5600aa8a02ecbb978..dbf4b65d8459180113df4f4ccd5c10e51a3034ce


commit ac286dfed81e995cf768cefa50e3f09d04e7c7c3
Author: MX <10697207+xMasterX@users.noreply.github.com>
Date:   Thu Oct 6 14:10:56 2022 +0300

    fix subghz bruteforcer, change subghz raw naming


commit a93008b218a20c468f8691065d49bcc06003fd6f
Author: MX <10697207+xMasterX@users.noreply.github.com>
Date:   Thu Oct 6 03:09:20 2022 +0300

    fix rfid fuzzer

commit 31aaa593fc546efad3f6c01d88052690dfe509c7
Author: MX <10697207+xMasterX@users.noreply.github.com>
Date:   Thu Oct 6 02:30:40 2022 +0300

    fixes, rfid fuzzer still crashes

commit 3e4d8a41e0adc144d7152ba7739a510a9dd0b795
Author: MX <10697207+xMasterX@users.noreply.github.com>
Date:   Wed Oct 5 21:39:40 2022 +0300

    Remove string_push_uint64
    
    OFW PR 1832 by Astrrra


commit 127b7006423b8b309aec0d7a34d77206013e49d3
Author: derskythe <skif@skif.ws>
Date:   Fri Sep 30 18:36:56 2022 +0400

    Init work on rev3, but this is not working code


moker@house:~/flipper/repos/Eng1n33r/flipperzero-firmware$ git show c60bfbf271d7c0685b0565cf48bf07768bd15df5

moker@house:~/flipper/repos/Eng1n33r/flipperzero-firmware$ git log -p 2288855163796c8c4aaca3e5600aa8a02ecbb978..dbf4b65d8459180113df4f4ccd5c10e51a3034ce | grep --color -Ei '^commit|brute'

moker@house:~/flipper/repos/Eng1n33r/flipperzero-firmware$ git --no-pager log --decorate un2-0f9ea9..un1-e3a5df | grep ^commit

moker@house:~/flipper/repos/Eng1n33r/flipperzero-firmware$ git --no-pager log --decorate un2-0f9ea9..un1-e3a5df -p

git submodule update --init --recursive
```



-------


```
git fetch origin master
git checkout --force -B master origin/master
git reset --hard
git clean -fdx
git submodule update --init --recursive --force
git submodule foreach git fetch
git submodule foreach git checkout --force -B master origin/master
git submodule foreach git reset --hard
git submodule foreach git clean -fdx
```




```
git fetch origin dev
git checkout --force -B builder un1-e3a5df
git reset --hard
git clean -ffdx
git submodule update --init --recursive --force
git submodule foreach git fetch
#git submodule foreach git checkout --force -B builder un1-e3a5df
git submodule foreach git reset --hard
git submodule foreach git clean -ffdx
```

-----


```
git submodule foreach git fetch
git submodule foreach git pull
```



----



```
root
|--- repos
     |--- Unleashed
          |--- subbrute

$ git show --oneline
301757ab (HEAD -> subbrute) add honeywell subbrute protocol
diff --git a/repos/Eng1n33r/unleashed-firmware b/repos/Eng1n33r/unleashed-firmware
index 1d196b41..5288f507 160000
--- a/repos/Eng1n33r/unleashed-firmware
+++ b/repos/Eng1n33r/unleashed-firmware
@@ -1 +1 @@
-Subproject commit 1d196b41e98387dd20ad4ce66c011ca9e9f443d7
+Subproject commit 5288f5072f259898db2f4a3cd2a9abd4041d7a93

$ git -C repos/Eng1n33r/unleashed-firmware/ show --oneline
5288f507 (HEAD -> dev) add honeywell subrute protocol
diff --git a/applications/plugins/subbrute b/applications/plugins/subbrute
index e5eb466c..dd68cda2 160000
--- a/applications/plugins/subbrute
+++ b/applications/plugins/subbrute
@@ -1 +1 @@
-Subproject commit e5eb466c557fe35564d3f69cad9481bf43e71437
+Subproject commit dd68cda20415c2dc143e66567a220222a6e66f62

$ git -C repos/Eng1n33r/unleashed-firmware/applications/plugins/subbrute show --oneline
dd68cda (HEAD -> honeywell) add honeywell as known protocol
diff --git a/subbrute_protocols.c b/subbrute_protocols.c
index 4612413..f95dcdf 100644
--- a/subbrute_protocols.c
+++ b/subbrute_protocols.c
@@ -273,6 +273,7 @@ static const char* subbrute_protocol_file_types[] = {
     [DoitrandFileProtocol] = "Doitrand",
     [GateTXFileProtocol] = "GateTX",
     [MagellanFileProtocol] = "Magellan",
+    [HoneywellFileProtocol] = "Honeywell",
     [IntertechnoV3FileProtocol] = "Intertechno_V3",
     [UnknownFileProtocol] = "Unknown"};
 
diff --git a/subbrute_protocols.h b/subbrute_protocols.h
index eeb3f34..966ecfb 100644
--- a/subbrute_protocols.h
+++ b/subbrute_protocols.h
@@ -17,6 +17,7 @@ typedef enum {
     DoitrandFileProtocol,
     GateTXFileProtocol,
     MagellanFileProtocol,
+    HoneywellFileProtocol,
     IntertechnoV3FileProtocol,
     UnknownFileProtocol,
     TotalFileProtocol,
```

https://blog.zenika.com/2017/01/24/pull-request-demystifie/
