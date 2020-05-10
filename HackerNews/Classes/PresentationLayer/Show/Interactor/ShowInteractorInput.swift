//
//  ShowInteractorInput.swift
//  HackerNews
//
//  Created by Nikita Vasilev on 02/05/2020.
//  Copyright © 2020 Nikita Vasilev. All rights reserved.
//

protocol ShowInteractorInput {
    func fetchShowIds()
    func fetchPosts(with ids: [Int])
}
