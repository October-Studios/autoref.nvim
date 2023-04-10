PANVIMDOC_TAG_VERSION="v2.7.3"

PANVIMDOWN_VIMDOC="autoref"
PANVIMDOC_DESCRIPTION="Randomizes your favorite color schemes for Neovim"
PANVIMDOC_PANDOC="README.md"
PANVIMDOC_VERSION="NVIM v0.5.0"
PANVIMDOC_TOC=true
PANDOC_OUTPUT="doc/autoref.txt"

PANVIMDOC_INSTALLED=false

if [ ! -d "panvimdoc/" ]; then
  PANVIMDOC_INSTALLED=true
  echo "Installing panvimdoc"
  git clone --depth 1\
    --branch "${PANVIMDOC_TAG_VERSION}"\
    "https://github.com/kdheepak/panvimdoc" "panvimdoc"
fi 

echo "Generating docs"
pandoc --metadata=project:"${PANVIMDOC_VIMDOC}"\
       --metadata=toc:${PANVIMDOC_TOC}\
       --metadata=vimversion:"${PANVIMDOC_VERSION}"\
       --metadata=description:"${PANVIMDOC_DESCRIPTION}"\
       --lua-filter ./panvimdoc/scripts/skip-blocks.lua\
       --lua-filter ./panvimdoc/scripts/include-files.lua\
       -t ./panvimdoc/scripts/panvimdoc.lua\
       -o "${PANDOC_OUTPUT}"\
       "${PANVIMDOC_PANDOC}"

if $PANVIMDOC_INSTALLED; then
  echo "Removing panvimdoc"
  rm -rf panvimdoc
fi 
