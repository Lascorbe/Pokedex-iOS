import UIKit

class PokedexViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    private var presenter: PokemonPresenter?
    private var pokemonList: Array<Pokemon>?
    private let pokedexCellName = String(PokedexTableViewCell)
    
    init() {
        super.init(nibName: String(PokedexViewController), bundle: nil)
        presenter = getPresenter(self)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
        presenter!.requestPokemonList()
    }
    
    func configureTableView() {
        let nib = UINib(nibName: pokedexCellName, bundle: nil)
        tableView.registerNib(nib, forCellReuseIdentifier: pokedexCellName)
        tableView.dataSource = self
        tableView.delegate = self
    }
}

extension PokedexViewController: PokemonPresenterView {
    func renderPokemons(pokemons: Array<Pokemon>) {
        pokemonList = pokemons
        tableView.reloadData()
    }
}

extension PokedexViewController: UITableViewDataSource {
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pokemonList!.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(pokedexCellName) as! PokedexTableViewCell
        let pokemon = pokemonList![indexPath.row]
        cell.configureCell(pokemon)
        return cell
    }
}

extension PokedexViewController: UITableViewDelegate {
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return PokedexTableViewCell.cellHeight
    }
}
