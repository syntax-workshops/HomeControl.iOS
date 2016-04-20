//
//  HomeClient.swift
//  HomeControl
//
//  Created by Mathijs Bernson on 06/12/15.
//  Copyright © 2015 Duckson. All rights reserved.
//

import Foundation
import Promissum
import RxSwift

typealias Topic = String

protocol HomeClient {
  func publish(message: Message) -> Promise<Message, HomeClientError>

  func subscribe(topic: Topic) -> Observable<Message>

  func connect()
  func disconnect()
}

struct HomeClientError: ErrorType, CustomStringConvertible {
  let message: String
  var description: String {
    return message
  }
}