import Foundation

protocol PokemonPresenter {
    var view: PokemonPresenterView { get }
    var useCase: GetPokemonListUseCase { get }
    func requestPokemonList()
}
extension PokemonPresenter {
    func requestPokemonList() {
        view.renderPokemons(useCase.execute())
    }
}

protocol PokemonPresenterView {
    func renderPokemons(pokemons: Array<Pokemon>)
}
