//
//  DUECHomeDterCell.swift
//  Duelliobuaf
//
//  Created by mumu on 2025/3/31.
//

import UIKit

class DUECHomeDterCell: UICollectionViewCell {

    @IBOutlet weak var dueLiveCoverimageview: UIImageView!
    
    @IBOutlet weak var avterDUE: UIImageView!
    
    
    @IBOutlet weak var hisHeade: UIImageView!
    
    @IBOutlet weak var namertlbel: UILabel!
    
    @IBOutlet weak var LiabeTitle: UILabel!
    
    
    @IBOutlet weak var seecountLablt: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        dueLiveCoverimageview.layer.cornerRadius = 15
        dueLiveCoverimageview.layer.masksToBounds = true
        
        avterDUE.layer.cornerRadius = 20
        avterDUE.layer.masksToBounds = true
        
        seecountLablt.layer.cornerRadius = 13
        seecountLablt.layer.masksToBounds = true
    }

}




class CelShineStarCell: UICollectionViewCell {
    override init(frame: CGRect) {
        super.init(frame: frame)
        let Titiel = UIImageView(image: UIImage.init(named: "liveBrightbanner"))
        Titiel.contentMode = .scaleToFill
        contentView.addSubview(Titiel)
        Titiel.snp.makeConstraints { make in
            make.edges.equalToSuperview()
            make.width.equalTo((UIScreen.main.bounds.width - 36)/2)
            make.height.equalTo(112)
        }
        
        self.backgroundColor = .clear
    }
    
    required  init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}



protocol WaterfallLayoutDelegate: AnyObject {
    func collectionView(_ collectionView: UICollectionView, heightForItemAt indexPath: IndexPath) -> CGFloat
}

class WaterfallLayout: UICollectionViewLayout {
    weak var delegate: WaterfallLayoutDelegate?
    
    // 布局配置
    private let numberOfColumns = 2 // 列数
    private let cellPadding: CGFloat = 12 // 单元格间距
    private var cache: [UICollectionViewLayoutAttributes] = [] // 缓存布局属性
    private var contentHeight: CGFloat = 0 // 内容总高度
    private var contentWidth: CGFloat { // 内容总宽度
        guard let collectionView = collectionView else { return 0 }
        return collectionView.bounds.width - (collectionView.contentInset.left + collectionView.contentInset.right)
    }
    
    override func prepare() {
        super.prepare()
        guard cache.isEmpty, let collectionView = collectionView else { return }
        
        // 计算每列的当前 Y 坐标
        let columnWidth = contentWidth / CGFloat(numberOfColumns)
        var xOffset: [CGFloat] = []
        for column in 0..<numberOfColumns {
            xOffset.append(CGFloat(column) * columnWidth)
        }
        var yOffset: [CGFloat] = .init(repeating: 0, count: numberOfColumns)
        
        // 遍历所有单元格计算布局
        for item in 0..<collectionView.numberOfItems(inSection: 0) {
            let indexPath = IndexPath(item: item, section: 0)
            
            // 获取单元格高度（通过代理）
            let cellHeight = delegate?.collectionView(collectionView, heightForItemAt: indexPath) ?? 180
            
            // 找到当前最短的列
            let column = yOffset.firstIndex(of: yOffset.min() ?? 0) ?? 0
            
            // 计算单元格 frame
            let frame = CGRect(
                x: xOffset[column],
                y: yOffset[column],
                width: columnWidth,
                height: cellHeight
            )
            let insetFrame = frame.insetBy(dx: cellPadding, dy: cellPadding)
            
            // 缓存布局属性
            let attributes = UICollectionViewLayoutAttributes(forCellWith: indexPath)
            attributes.frame = insetFrame
            cache.append(attributes)
            
            // 更新列的高度
            contentHeight = max(contentHeight, frame.maxY)
            yOffset[column] = yOffset[column] + cellHeight
        }
    }
    
    override func layoutAttributesForElements(in rect: CGRect) -> [UICollectionViewLayoutAttributes]? {
        return cache.filter { $0.frame.intersects(rect) }
    }
    
    override func layoutAttributesForItem(at indexPath: IndexPath) -> UICollectionViewLayoutAttributes? {
        return cache[indexPath.item]
    }
    
    override var collectionViewContentSize: CGSize {
        return CGSize(width: contentWidth, height: contentHeight)
    }
}
