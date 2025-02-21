//
//  CategoriesCollectionViewCell.swift
//  Spotify
//
//  Created by Thais Souza on 20/02/25.
//

import UIKit

class CategoriesCollectionViewCell: UICollectionViewCell {
    static let identifier = "CategoriesCollectionViewCell"
        
    private let categoryCoverImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "photo")
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    private let categoryNameLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 22, weight: .bold)
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.backgroundColor = .secondarySystemBackground
        contentView.addSubview(categoryCoverImageView)
        contentView.addSubview(categoryNameLabel)
        contentView.clipsToBounds = true
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        let imageSize: CGFloat = contentView.height-10
        
        let textLabelSize = categoryCoverImageView.sizeThatFits(
            CGSize(width: contentView.width-imageSize-10,
                   height: contentView.height-10)
        )
        categoryNameLabel.sizeToFit()
        
        categoryCoverImageView.frame = CGRect(x: 5, y: 5, width: imageSize, height: imageSize)
        
                
        categoryNameLabel.frame = CGRect(
            x: categoryCoverImageView.left,
            y: categoryCoverImageView.bottom-44,
            width: categoryCoverImageView.width,
            height: 44
        )
        
        categoryNameLabel.textColor = .white
        categoryNameLabel.backgroundColor = .secondaryLabel
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        categoryNameLabel.text = nil
        categoryCoverImageView.image = nil
    }
    
    func configure(wiht viewModel: CategoriesCellViewModel) {
        categoryNameLabel.text = viewModel.name
        categoryCoverImageView.sd_setImage(with: viewModel.icons, completed: nil)
    }

}
