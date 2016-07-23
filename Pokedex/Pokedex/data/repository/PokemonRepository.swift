import Foundation

final class PokemonRepository {
    private let localDataSource: LocalDataSource
    
    init(localDataSource: LocalDataSource) {
        self.localDataSource = localDataSource
    }
    
    func getPokemonList() -> Array<Pokemon> {
        return map(localDataSource.getPokemonList())
    }
}
