#!/bin/sh
echo '======================================================================'
echo '                           BY- BAHAA LINUXCODE                        '
echo '======================================================================'
killall -9 gst1.0-ipaudio
wait
killall -9 ff-ipaudio
wait
echo "=========================================================================="
echo "Some Depends Need to Be downloaded From Feeds ...."
echo "=========================================================================="
echo "Opkg Update ..."
echo "========================================================================"
opkg update
echo " Downloading gstreamer1.0-plugins-base-volume ......"
opkg install gstreamer1.0-plugins-base-volume
echo "========================================================================"
echo " Downloading gstreamer1.0-plugins-good-ossaudio ......"
opkg install gstreamer1.0-plugins-good-ossaudio
echo "========================================================================"
echo " Downloading gstreamer1.0-plugins-good-mpg123 ......"
opkg install gstreamer1.0-plugins-good-mpg123
echo "========================================================================"
echo " Downloading gstreamer1.0-plugins-good-equalizer ......"
opkg install gstreamer1.0-plugins-good-equalizer
echo "========================================================================"
echo " Downloading ffmpeg ......"
opkg install ffmpeg
echo "========================================================================"
echo " Downloading alsa-plugins ......"
opkg install alsa-plugins
echo "========================================================================"
rm -rf /usr/lib/enigma2/python/Plugins/Extensions/IPAudio >/dev/null 2>&1
rm -f /usr/bin/gst1.0-ipaudio >/dev/null 2>&1
rm -f /usr/bin/ff-ipaudio >/dev/null 2>&1
mkdir -p '/usr/lib/enigma2/python/Plugins/Extensions/IPAudio'
wget -q "https://drive.google.com/uc?export=download&id=1Fs6IywVnmi95x7Tf67YsoJ6Qwd37Bap7" -O "/tmp/ipaudio.tar.gz"
tar -xzf /tmp/ipaudio.tar.gz -C /tmp
cp -r '/tmp/ip-audio_v7.4_By_Bahaa/IPAudio/.' '/usr/lib/enigma2/python/Plugins/Extensions/IPAudio'
cp -a '/tmp/ip-audio_v7.4_By_Bahaa/bin/gst1.0-ipaudio' '/usr/bin/'
cp -a '/tmp/ip-audio_v7.4_By_Bahaa/bin/ff4/ff-ipaudio' '/usr/bin/'
chmod 0775 /usr/bin/gst1.0-ipaudio
chmod 0775 /usr/bin/ff-ipaudio
wait
rm -rf /tmp/ipaudio.tar.gz >/dev/null 2>&1
rm -rf /tmp/ip-audio_v7.4_By_Bahaa >/dev/null 2>&1
init 4; sleep 2; init 3