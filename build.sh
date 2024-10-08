#!/bin/sh

set -x

mkdir -p org

(cd org || exit
  if [ ! -e morisawa-biz-ud-gothic-fonts.zip ]; then
      curl -O -L https://github.com/googlefonts/morisawa-biz-ud-gothic/releases/download/v1.051/morisawa-biz-ud-gothic-fonts.zip
  fi

  if [ ! -e morisawa-biz-ud-mincho-fonts.zip ]; then
      curl -O -L https://github.com/googlefonts/morisawa-biz-ud-mincho/releases/download/v1.06/morisawa-biz-ud-mincho-fonts.zip
  fi
  unzip -o morisawa-biz-ud-gothic-fonts.zip
  unzip -o morisawa-biz-ud-mincho-fonts.zip
)

mkdir -p fonts
for TTF in org/morisawa-biz-ud-*-fonts/fonts/ttf/*.ttf; do
    NEW_FONT_NAME="$(basename "${TTF}" | sed -e 's/BIZ/SUB/' -e 's/.ttf/.woff2/')"
    uv run pyftsubset "${TTF}" \
	       --text-file=jis1.txt \
	       --layout-features='*' \
	       --flavor=woff2 \
	       --output-file="fonts/${NEW_FONT_NAME}"
done
