@echo off

setlocal

rem List of package names to remove
set packages=com.miui.analytics com.xiaomi.mipicks com.miui.msa.global com.miui.cloudservice com.miui.cloudservice.sysbase com.miui.newmidrive com.miui.cloudbackup com.miui.backup com.xiaomi.glgm com.xiaomi.payment com.mipay.wallet.in com.tencent.soter.soterserver cn.wps.xiaomi.abroad.lite com.miui.videoplayer com.miui.player com.mi.globalbrowser com.xiaomi.midrop com.miui.yellowpage com.miui.gallery com.miui.android.fashiongallery com.miui.bugreport com.miui.miservice com.miui.weather2 com.miui.hybrid com.miui.hybrid.accessory com.miui.global.packageinstaller com.xiaomi.joyose com.google.android.gms.location.history com.google.android.videos com.google.android.music com.google.android.apps.photos com.google.android.youtube com.google.android.apps.tachyon com.google.ar.lens com.google.android.googlequicksearchbox com.google.android.apps.wellbeing com.google.android.apps.googleassistant com.facebook.katana com.facebook.services com.facebook.system com.facebook.appmanager com.facebook.katana

set failed=

for %%p in (%packages%) do (
    adb shell pm uninstall --user 0 %%p
    if errorlevel 1 (
        echo Failed to remove %%p
        set failed=%%p
    ) else (
        echo Removed %%p
    )
)

if defined failed (
    echo.
    echo The following packages failed to remove:
    echo %failed%
)

endlocal