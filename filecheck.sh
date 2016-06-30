if [ "$#" -ne 1 ]; then
	echo "specify project"
fi

WP=$HOME/wp
cd $WP/$1

for c in $(ls *.c); do
	grep -q "$c" $c
	if [ $? -ne 0 ]; then
		nvim $c
	fi
done
