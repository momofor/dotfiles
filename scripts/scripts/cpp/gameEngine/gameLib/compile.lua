#! #!/usr/bin/env luajit
os.execute("rm -rf gameLib.o gameLib.a")
os.execute("g++ -c src/gameLib.cpp -o gameLib.o")
os.execute("ar rs gameLib.a gameLib.o")
os.execute("rm -rf gameLib.o")
