# GNU Make workspace makefile autogenerated by Premake

ifndef config
  config=debug
endif

ifndef verbose
  SILENT = @
endif

ifeq ($(config),debug)
  game_with_sdl2_config = debug
endif
ifeq ($(config),noice)
  game_with_sdl2_config = noice
endif

PROJECTS := game-with-sdl2

.PHONY: all clean help $(PROJECTS) 

all: $(PROJECTS)

game-with-sdl2:
ifneq (,$(game_with_sdl2_config))
	@echo "==== Building game-with-sdl2 ($(game_with_sdl2_config)) ===="
	@${MAKE} --no-print-directory -C . -f game-with-sdl2.make config=$(game_with_sdl2_config)
endif

clean:
	@${MAKE} --no-print-directory -C . -f game-with-sdl2.make clean

help:
	@echo "Usage: make [config=name] [target]"
	@echo ""
	@echo "CONFIGURATIONS:"
	@echo "  debug"
	@echo "  noice"
	@echo ""
	@echo "TARGETS:"
	@echo "   all (default)"
	@echo "   clean"
	@echo "   game-with-sdl2"
	@echo ""
	@echo "For more information, see https://github.com/premake/premake-core/wiki"