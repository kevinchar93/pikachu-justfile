# A Justfile that prints out Pikachu's abilities!

API_RESPONSE_FILE := "pikachu.json"
ABILITIES_FILE := "abilities.json"
API_URL := "https://pokeapi.co/api/v2/pokemon/pikachu"

print-abilities: abilities
	@cat {{ABILITIES_FILE}}


abilities: pikachu-api
	@cat {{API_RESPONSE_FILE}} | jq '.abilities[] | .ability | .name' > {{ABILITIES_FILE}}


pikachu-api:
	@if ! {{path_exists(API_RESPONSE_FILE)}}; then curl -o {{API_RESPONSE_FILE}} {{API_URL}}; fi


clean:
	rm -f {{ABILITIES_FILE}} {{API_RESPONSE_FILE}}
