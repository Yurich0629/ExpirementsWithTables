//
//  MonkeyTableView.swift
//  ExpirementsWithTables
//
//  Created by Илья Десятов on 19.12.2023.
//

import UIKit


class MonkeyTableView: UIView {
    
    private let scrollView = UIScrollView()
    
    private var countOfCells = 19
    private var heightCell = 44
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configureScrollView()
        configureCells()
        
    }
    
    init(countOfCells: Int, heightCell: Int, frame: CGRect) {
        super.init(frame: frame)
        
        self.countOfCells = countOfCells
        self.heightCell = heightCell
        
        configureScrollView()
        configureCells()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Private
    
    private func configureScrollView() {
        scrollView.backgroundColor = .red
        scrollView.frame = self.frame
        scrollView.contentSize = CGSize(
            width: self.frame.width,
            height: CGFloat(countOfCells * heightCell + 80)
        )
        
        self.addSubview(scrollView)
    }

    private func configureCells() {
        for index in 0...countOfCells {
            let cellView = CellView(
                frame: CGRect(x: 0,
                              y: heightCell * index,
                              width: Int(scrollView.frame.size.width), height: heightCell)
            )
            cellView.setText(String(index))
            scrollView.addSubview(cellView)
        }
    }
    
}
