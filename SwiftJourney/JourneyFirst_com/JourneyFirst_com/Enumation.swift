//
//  Enumation.swift
//  JourneyFirst_com
//
//  Created by Liora on 14-6-17.
//  Copyright (c) 2014年 Liora. All rights reserved.
//

import Foundation
enum Rank: Int
{
    case Ace = 1
    case Two,Three,Four,Five,Six,Seven,Eight,Nine,Ten
    case Jack,Queen,King
    func simpleDescription() ->String
    {
        switch self{
        case .Ace:
            return "ace"
        case .Jack:
            return "jack"
        case .Queen:
            return "queen"
        case .King:
            return "king"
        default:
            return String(self.toRaw())
        }
    }
}
