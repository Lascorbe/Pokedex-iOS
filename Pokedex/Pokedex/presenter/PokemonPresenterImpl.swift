import Foundation

class PokemonPresenterImpl: PokemonPresenter {
    internal let view: PokemonPresenterView
    internal let useCase: GetPokemonListUseCase
    
    init(view: PokemonPresenterView, useCase: GetPokemonListUseCase) {
        self.view = view
        self.useCase = useCase
    }
}
