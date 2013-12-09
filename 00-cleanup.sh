#!/sbin/sh
#
# Clean up CyanogenMod installation after install
# Deleted: all sounds, but one ringtone and notify,
#   TTS languages, offline dicattion and few apps
# 
# /system/addon.d/00-cleanup.sh
#
. /tmp/backuptool.functions

RINGTONE=Machina
NOTIFICATION=Argon

case "$1" in
  backup)
    # Stub
  ;;
  restore)
    # Rington sounds
    cd /system/media/audio/ringtones/
    rm [!${RINGTONE}]*.ogg
    # Notify sounds
    cd /system/media/audio/notifications/
    rm [!${NOTIFICATION}]*.ogg
    # Alarm sounds (all)
    rm /system/media/audio/alarms/*
    # TTS Languages
    rm /system/tts/lang_pico/*
    # Offline dictation
    rm -rf /system/usr/srec/config/*
    # Apps
    A=/system/app/
    rm $A/Email.apk
    rm $A/Exchange2.apk
    #rm $A/LockClock.apk
    rm $A/PicoTts.apk
    rm $A/Term.apk
    #rm $A/ThemeChooser.apk
    #rm $APPS/WAPPushManager.apk
    rm $A/LiveWallpapers.apk
    #rm $A/LiveWallpapersPicker.apk
    rm $A/VisualizationWallpapers.apk
    A=/system/priv-app/
    rm $A/CMUpdater.apk
    #rm $A/ThemeManager.apk
  ;;
  pre-backup)
    # Stub
  ;;
  post-backup)
    # Stub
  ;;
  pre-restore)
    # Stub
  ;;
  post-restore)
    # Stub
  ;;
esac
