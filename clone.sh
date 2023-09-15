if [ ! -d foreign ]; then
  mkdir foreign
fi

cd foreign

for i in jazz-cairo-silicon jazz-fontconfig-silicon jazz-freetype-silicon jazz-opengl-silicon jazz-pixman-silicon jazz-png-silicon jazz-stream-silicon
do
  jas clone togethersphere.com/$i
done
