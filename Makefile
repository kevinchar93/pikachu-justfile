# A Makefile the prints out Pikachu's abilities!

pikachu.json:
	curl -o pikachu.json https://pokeapi.co/api/v2/pokemon/pikachu

abilities.json: pikachu.json
	cat pikachu.json | jq '.abilities[] | .ability | .name' > abilities.json

print-abilities: abilities.json increment-prints
	cat abilities.json

clean:
	rm -f pikachu.json abilities.json

.PHONY: clean
.PHONY: print-abilities