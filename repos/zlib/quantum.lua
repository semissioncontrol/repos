package = {
	name = "zlib",
	version = "1.2.11",
	source = "https://zlib.net/fossils/zlib-1.2.11.tar.gz",
	git = false
}

function build()
	os.execute("sed -i 's/-O3/-Os/g' configure")
        os.execute("./configure --prefix=/usr --shared")
	make()
end

function install()
	os.execute("make DESTDIR=" .. install_dir .. "bindir/zlib/1.2.11/ install")
end
