echo "in $0"

OUT_DIR=out/merged_target_files/
FLYME_DIR=$OUT_DIR/DATA/media/flyme

cd $OUT_DIR
echo "Delete $OUT_DIR/DATA"
rm -rf DATA/
echo "mkdir DATA/media/flyme/"
mkdir -vp DATA/media/flyme
echo "move some app into data"
mv -vf $OUT_DIR/SYSTEM/app/IflytekSpeechService $FLYME_DIR/app/IflytekSpeechService
mv -vf $OUT_DIR/SYSTEM/app/Life $FLYME_DIR/app/Life
mv -vf $OUT_DIR/SYSTEM/app/Painter $FLYME_DIR/app/Painter
mv -vf $OUT_DIR/SYSTEM/app/Video $FLYME_DIR/app/Video
mv -vf $OUT_DIR/SYSTEM/app/VoiceAssistant $FLYME_DIR/app/VoiceAssistant
echo "move system font into data"
mv -vf $OUT_DIR/SYSTEM/fonts $FLYME_DIR/fonts