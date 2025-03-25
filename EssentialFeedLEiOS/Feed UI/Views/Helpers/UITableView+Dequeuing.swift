//
//  UITableView+Dequeuing.swift
//  EssentialFeedLE
//
//  Created by Faiyaz Ahmed on 20/03/2025.
//

import UIKit

extension UITableView {
    func dequeueReusableCell<T: UITableViewCell>() -> T {
        let identifier = String(describing: T.self)
        return dequeueReusableCell(withIdentifier: identifier) as! T
    }
}

