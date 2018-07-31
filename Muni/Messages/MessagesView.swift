//
//  MessagesView.swift
//  Sample
//
//  Created by 1amageek on 2018/07/27.
//  Copyright © 2018年 1amageek. All rights reserved.
//

import UIKit

public class MessagesView: UICollectionView {

    public func scrollToBottom(animated: Bool = false) {
        let collectionViewContentHeight: CGFloat = collectionViewLayout.collectionViewContentSize.height
        let offsetY: CGFloat = collectionViewContentHeight - (self.bounds.height - self.contentInset.top - self.contentInset.bottom - self.safeAreaInsets.bottom)
        self.performBatchUpdates(nil) { _ in
            self.setContentOffset(CGPoint(x: 0, y: offsetY), animated: animated)
        }
    }
}