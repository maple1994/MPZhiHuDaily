//
//  MPMenuItemModel.swift
//  RxZhiHuDaily
//
//  Created by Maple on 2017/9/21.
//  Copyright © 2017年 Maple. All rights reserved.
//

import UIKit
import HandyJSON

/// 菜单栏主题类型模型
struct MPMenuItemModel: HandyJSON {
    var color: Int?
    var thumbnail: String?
    var description: String?
    var id: Int?
    var name: String?
}

/// 话题列表模型
struct MPStoryListModel: HandyJSON {
    var date: String?
    var stories: [MPStoryModel]?
    var top_stories: [MPStoryModel]?
}

/// 话题单元模型
struct MPStoryModel: HandyJSON {
    /// list_stories中的字段
    var images: [String]? {
        didSet {
            // 多图取决于该数组的长度是否大于1
            if let arr = images {
                multipic = arr.count > 1
            }
        }
    }
    /// top_stories中的字段
    var image: String?
    var type: Int?
    var id: Int?
    var ga_prefix: String?
    var title: String?
    /// 是否显示多图标志
    var multipic: Bool = false
}

/// 话题详情模型
struct MPStoryDetailModel: HandyJSON {
    var body: String?
    var ga_prefix: String?
    var id: Int?
    var image: String?
    var image_source: String?
    var share_url: String?
    var title: String?
    var type: Int?
    var images: [String]?
    var css: [String]?
    var js: [String]?
}









