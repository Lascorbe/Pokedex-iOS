import Foundation

final class LocalDataSource {
    private var cache = [PokemonData]()
    
    init() {
        for count in 1...100 {
            buildFakePokemon(
                count,
                imageUrl: "http://vignette1.wikia.nocookie.net/pokemon/images/5/5b/129Magikarp_OS_anime_2.png/revision/latest?cb=20150101075047",
                name: "Name \(count)",
                description: "Description \(count)")
        }
    }
    
    private func buildFakePokemon(id: Int, imageUrl: String, name: String, description: String) {
        let pokemonData =  PokemonData(
            id: id,
            imageUrl: imageUrl,
            name: name,
            description: description)
        cache.append(pokemonData)
    }
    
    func getPokemonList() -> Array<PokemonData> {
        return cache
    }
}
