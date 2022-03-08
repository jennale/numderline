# pyftsubset SourceSansPro-Regular.ttf --text="0123456789,. e_+" --no-hinting --desubroutinize    

# Use numderline to make the ligature fonts
python3 patcher.py --no-rename --no-underline --add-commas --no-decimals SourceSansPro-Regular.subset.ttf 
python3 patcher.py --no-rename --no-underline --add-commas --no-decimals SourceSansPro-Regular.subset.ttf --french

cd ./out

# use pyftsubset to create woff versions that are super compressed
pyftsubset Src-Sans-Numeric.ttf --glyphs="*" --flavor="woff2" --with-zopfli
pyftsubset Src-Sans-Numeric.ttf --glyphs="*" --flavor="woff" --with-zopfli

pyftsubset Src-Sans-Numeric-FR.ttf --glyphs="*" --flavor="woff2" --with-zopfli
pyftsubset Src-Sans-Numeric-FR.ttf --glyphs="*" --flavor="woff" --with-zopfli

rm tmp.ttf
mv Src-Sans-Numeric.subset.woff Src-Sans-Numeric.woff
mv Src-Sans-Numeric.subset.woff2 Src-Sans-Numeric.woff2

mv Src-Sans-Numeric-FR.subset.woff Src-Sans-Numeric-FR.woff
mv Src-Sans-Numeric-FR.subset.woff2 Src-Sans-Numeric-FR.woff2

cd ..