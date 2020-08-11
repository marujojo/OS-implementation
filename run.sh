set -x

./bin/bximage -hd -mode="flat" -size=60 -q hd60M.img

nasm -I ./src/include/ -o /tmp/mbr.bin ./src/mbr.S
dd if=/tmp/mbr.bin of=hd60M.img bs=512 count=1 conv=notrunc

nasm -I ./src/include/ -o /tmp/loader.bin ./src/loader.S
dd if=/tmp/loader.bin of=hd60M.img bs=512 count=200 seek=2 conv=notrunc

./bin/bochs -f bochsrc.disk
