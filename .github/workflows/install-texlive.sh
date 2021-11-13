REMOTE="http://mirror.ctan.org/systems/texlive/tlnet";

INSTALL="/tmp/install-texlive";

mkdir -p "$INSTALL";
curl -sSL "$REMOTE/install-tl-unx.tar.gz" | tar -xz -C "$INSTALL" \
    --strip-components=1;
"$INSTALL/install-tl" -profile .github/workflows/texlive.profile;

export PATH="/tmp/texlive/bin/x86_64-linux:$PATH";

tlmgr install l3build \
    fontname fontspec xetex \
    cjk environ ms trimspaces ulem zhnumber \
    fandol tex-gyre xits \
    bibunits caption enumitem etoolbox footmisc notoccite pdfpages unicode-math \
    booktabs koma-script nomencl ntheorem siunitx xkeyval \
    pdflscape \
    hologo listings xcolor \
    diagbox float fp metalogo multirow pict2e \
    latexmk ctex ntheorem newtx fontaxes pdfpages enumitem environ trimspaces\
    footmisc varwidth changepage placeins multirow subfigure ccaption splitindex\
    xltxtra realscripts siunitx jknapltx algorithm2e ifoddpage relsize\
    listings glossaries mfirstuc textcase xfor datatool tracklang pdflscape rsfs\
    txfonts xecjk tex-gyre newpx mhchem makecell xstring graphbox wrapfig titlesec \
    tcolorbox fontawesome algorithms algorithmmicx
    
if [ ! -d $HOME/.fonts ]; then
    mkdir $HOME/.fonts;
fi

wget https://github.com/wuxiaoqiang12/algorithm_learning_acwing/raw/main/fonts/FontAwesome.otf -O $HOME/.fonts/FontAwesome.otf

wget https://github.com/wuxiaoqiang12/algorithm_learning_acwing/raw/main/fonts/%E6%96%B9%E6%AD%A3%E4%B8%AD%E7%AD%89%E7%BA%BF_GBK.ttf -O $HOME/.fonts/%E6%96%B9%E6%AD%A3%E4%B8%AD%E7%AD%89%E7%BA%BF_GBK.ttf
wget https://github.com/wuxiaoqiang12/algorithm_learning_acwing/raw/main/fonts/%E6%96%B9%E6%AD%A3%E4%B9%A6%E5%AE%8B_GBK.ttf -O $HOME/.fonts/%E6%96%B9%E6%AD%A3%E4%B9%A6%E5%AE%8B_GBK.ttf
wget https://github.com/wuxiaoqiang12/algorithm_learning_acwing/raw/main/fonts/%E6%96%B9%E6%AD%A3%E4%BB%BF%E5%AE%8B_GBK.ttf -O $HOME/.fonts/%E6%96%B9%E6%AD%A3%E4%BB%BF%E5%AE%8B_GBK.ttf
wget https://github.com/wuxiaoqiang12/algorithm_learning_acwing/raw/main/fonts/%E6%96%B9%E6%AD%A3%E5%B0%8F%E6%A0%87%E5%AE%8B_GBK.ttf -O $HOME/.fonts/%E6%96%B9%E6%AD%A3%E5%B0%8F%E6%A0%87%E5%AE%8B_GBK.ttf
wget https://github.com/wuxiaoqiang12/algorithm_learning_acwing/raw/main/fonts/%E6%96%B9%E6%AD%A3%E6%A5%B7%E4%BD%93_GBK.ttf -O $HOME/.fonts/%E6%96%B9%E6%AD%A3%E6%A5%B7%E4%BD%93_GBK.ttf
wget https://github.com/wuxiaoqiang12/algorithm_learning_acwing/raw/main/fonts/%E6%96%B9%E6%AD%A3%E9%BB%91%E4%BD%93_GBK.ttf -O $HOME/.fonts/%E6%96%B9%E6%AD%A3%E9%BB%91%E4%BD%93_GBK.ttf

if [ ! -d $HOME/.fonts/Myriad\ Pro ]; then
    mkdir $HOME/.fonts/Myriad\ Pro;
fi

wget https://github.com/wuxiaoqiang12/algorithm_learning_acwing/raw/main/fonts/Myriad%20Pro/MyriadPro-Bold.otf -O $HOME/.fonts/Myriad\ Pro/MyriadPro-Bold.otf
wget https://github.com/wuxiaoqiang12/algorithm_learning_acwing/raw/main/fonts/Myriad%20Pro/MyriadPro-BoldIt.otf -O $HOME/.fonts/Myriad\ Pro/MyriadPro-BoldIt.otf
wget https://github.com/wuxiaoqiang12/algorithm_learning_acwing/raw/main/fonts/Myriad%20Pro/MyriadPro-It.otf -O $HOME/.fonts/Myriad\ Pro/MyriadPro-It.otf
wget https://github.com/wuxiaoqiang12/algorithm_learning_acwing/raw/main/fonts/Myriad%20Pro/MyriadPro-Regular.otf -O $HOME/.fonts/Myriad\ Pro/MyriadPro-Regular.otf

if [ ! -d $HOME/.fonts/Minion\ Pro ]; then
    mkdir $HOME/.fonts/Minion\ Pro;
fi

wget https://github.com/wuxiaoqiang12/algorithm_learning_acwing/raw/main/fonts/Minion%20Pro/MinionPro-Bold.otf -O $HOME/.fonts/Minion\ Pro/MinionPro-Bold.otf
wget https://github.com/wuxiaoqiang12/algorithm_learning_acwing/raw/main/fonts/Minion%20Pro/MinionPro-BoldIt.otf -O $HOME/.fonts/Minion\ Pro/MinionPro-BoldIt.otf
wget https://github.com/wuxiaoqiang12/algorithm_learning_acwing/raw/main/fonts/Minion%20Pro/MinionPro-It.otf -O $HOME/.fonts/Minion\ Pro/MinionPro-It.otf
wget https://github.com/wuxiaoqiang12/algorithm_learning_acwing/raw/main/fonts/Minion%20Pro/MinionPro-Regular.otf -O $HOME/.fonts/Minion\ Pro/MinionPro-Regular.otf

if [ ! -d $HOME/.fonts/Courier\ Std ]; then
    mkdir $HOME/.fonts/Courier\ Std;
fi

wget https://github.com/wuxiaoqiang12/algorithm_learning_acwing/raw/main/fonts/Courier%20Std/CourierStd-Bold.otf -O $HOME/.fonts/Courier\ Std/CourierStd-Bold.otf
wget https://github.com/wuxiaoqiang12/algorithm_learning_acwing/raw/main/fonts/Courier%20Std/CourierStd-BoldOblique.otf -O $HOME/.fonts/Courier\ Std/CourierStd-BoldOblique.otf
wget https://github.com/wuxiaoqiang12/algorithm_learning_acwing/raw/main/fonts/Courier%20Std/CourierStd-Oblique.otf -O $HOME/.fonts/Courier\ Std/CourierStd-Oblique.otf
wget https://github.com/wuxiaoqiang12/algorithm_learning_acwing/raw/main/fonts/Courier%20Std/CourierStd.otf -O $HOME/.fonts/Courier\ Std/CourierStd.otf

fc-cache -f $HOME/.fonts/
