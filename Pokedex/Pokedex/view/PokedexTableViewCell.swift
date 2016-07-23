import UIKit

class PokedexTableViewCell: UITableViewCell {
    
    static let cellHeight: CGFloat = 60.0

    @IBOutlet weak var pokemonImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
//        nameLabel.font = UIFont.systemFontOfSize(18)
    }
    
    func configureCell(pokemon: Pokemon) {
        let url = NSURL(string: pokemon.imageUrl)
        let data = NSData(contentsOfURL: url!)
        pokemonImage.image = UIImage(data: data!)
        nameLabel.text = pokemon.name
        descriptionLabel.text = pokemon.description
    }
}
