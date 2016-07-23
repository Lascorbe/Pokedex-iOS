import Foundation

final class GetPokemonListUseCase {
    private let repository: PokemonRepository
    
    init(repository: PokemonRepository) {
        self.repository = repository
    }
    
    func execute() -> Array<Pokemon> {
        return repository.getPokemonList()
    }
}
