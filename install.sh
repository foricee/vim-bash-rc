# run with root

for file in bashrc vim vimrc gvimrc; do
    for people in root home/foricee; do
        ln -sf /home/foricee/svn/vim-bash-rc/$file /$people/.$file
    done
done
ln -sf /home/foricee/svn/vim-bash-rc/ibus-phrases.txt /home/foricee/.config/ibus/pinyin/phrases.txt

echo done
