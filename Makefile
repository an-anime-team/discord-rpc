CC = g++
CXXFLAGS = -Wall -fno-stack-protector -Ofast -flto -Wl,-rpath="$$ORIGIN/usr/lib/an-anime-game-launcher-bin/public/discord-rpc/libdiscord-rpc.so"


TARGET = discord-rpc


LIBS=lib/libdiscord-rpc.so lib/libdiscord-rpc.a
$(TARGET): $(TARGET).cpp $(LIBS)
	$(CC) $(TARGET).cpp -L./lib/ -o $(TARGET) -ldiscord-rpc $(CXXFLAGS) 
clean:
	rm -rf $(TARGET)
