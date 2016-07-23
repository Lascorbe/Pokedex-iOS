import Foundation

func map(source: Array<PokemonData>) -> Array<Pokemon> {
    return source.map { pokemonData in
        return map(pokemonData)
    }
}

func map(source: PokemonData) -> Pokemon {
    return Pokemon(pokemonData: source)
}

private extension Pokemon {
    init(pokemonData: PokemonData) {
        self = Pokemon(id: pokemonData.id,
                       imageUrl: pokemonData.imageUrl,
                       name: pokemonData.name,
                       description: pokemonData.description)
    }
}
