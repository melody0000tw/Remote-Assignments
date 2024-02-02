//
//  Question-2.swift
//  TableViewPage
//
//  Created by Melody Lee on 2024/2/2.
//

import Foundation

/*:
 There are several methods defined in the UITableViewDataSource protocol. Which methods are called by the system after we manually call reloadData() of a table view and what are their sequences? Please describe in as much detail as possible.
 
 
 在 reloadData() 被呼叫後，就會像重新開啟app一樣，呼叫一遍 Data Source 幾個 required method：
 - numberOfSectionsInTableView(_:): 先告訴Table View 總共有幾個 section
 - tableView(_:numberOfRowsInSection:): 再來告訴 Table View 每個 section 各有幾個 row 要建立
 - tableView(_:cellForRowAt:): 當取得 section 數量跟 row 數量後就可以取得 indexPath pass進去這個method，它會dequeue一個cell，並將cell需要顯示的資料放進去，然後return 這個 cell。
 
 當螢幕table view 需要顯示到這個cell時，他就會呼叫 data source的 cellForRowAt method，並告訴他這個 cell 的 indexPath，Data Source 就會提供建立好的 cell 給 Table view 顯示。
 
 */
