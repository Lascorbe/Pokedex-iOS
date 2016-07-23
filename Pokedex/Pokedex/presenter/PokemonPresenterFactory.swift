import Foundation

func getPresenter(view: PokemonPresenterView) -> PokemonPresenter {
    let useCase = getPokemonUseCase()
    return PokemonPresenterImpl(view: view, useCase: useCase)
}

private func getPokemonUseCase() -> GetPokemonListUseCase {
    let repository = getPokemonRespository()
    let useCase = GetPokemonListUseCase(repository: repository)
    return useCase
}

private func getPokemonRespository() -> PokemonRepository {
    let dataSource = getPokemonLocalDataSource()
    let repository = PokemonRepository(localDataSource: dataSource)
    return repository
}

private func getPokemonLocalDataSource() -> LocalDataSource {
    return LocalDataSource()
}
