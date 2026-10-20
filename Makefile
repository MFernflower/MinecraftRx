ZIP_NAME := minecraftrx_datapack.zip

.PHONY: pack clean

pack: $(ZIP_NAME)

$(ZIP_NAME): pack.mcmeta data
	@rm -f "$(ZIP_NAME)"
	@zip -r "$(ZIP_NAME)" pack.mcmeta data

clean:
	@rm -f "$(ZIP_NAME)"
