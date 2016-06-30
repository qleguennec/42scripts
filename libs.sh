WP=$HOME/wp
LIBS="libft libgnl libbst libvect"

for i in $LIBS; do
	if [ -d "$WP/$i" ]; then
		cd $WP/$i
		git pull
	else
		git clone https://github.com/qleguennec/$i $WP/$i
	fi
done
