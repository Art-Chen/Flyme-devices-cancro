echo "in $0"
#Author = Art_Chen
OUT_DIR=/home/andy/flyme/lollipop-5.0/devices/cancro/out/merged_target_files
#FLYME_DIR=$OUT_DIR/DATA/media/flyme

cd $OUT_DIR
echo "Delete $OUT_DIR/DATA"
rm -rf DATA/
echo "create dir DATA/"
mkdir -vp DATA/
echo "move some app into data"
mkdir -vp $OUT_DIR/DATA/sys-priv-app
#mkdir -vp $FLYME_DIR/app/Painter
#mkdir -vp $FLYME_DIR/app/Life
#mkdir -vp $FLYME_DIR/app/Video
#mkdir -vp $FLYME_DIR/app/MzInput
#mkdir -vp $FLYME_DIR/app/Music
#mkdir -vp $FLYME_DIR/app
#mv -vf $OUT_DIR/SYSTEM/app/IflytekSpeechService/ $OUT_DIR/DATA/sys-priv-app/
#mv -vf $OUT_DIR/SYSTEM/app/Painter/ $OUT_DIR/DATA/sys-priv-app
#mv -vf $OUT_DIR/SYSTEM/priv-app/Life/ $FLYME_DIR/app/
#mv -vf $OUT_DIR/SYSTEM/priv-app/Video/ $FLYME_DIR/app/
#mv -vf $OUT_DIR/SYSTEM/priv-app/Music/ $FLYME_DIR/app/
#mv -vf $OUT_DIR/SYSTEM/priv-app/MzInput/ $FLYME_DIR/app/
mv -vf $OUT_DIR/SYSTEM/priv-app/* $OUT_DIR/DATA/sys-priv-app
echo "move system font into data"
mv -vf $OUT_DIR/SYSTEM/fonts/ $OUT_DIR/DATA/sys-fonts
