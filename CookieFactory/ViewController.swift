//
//  ViewController.swift
//  CookieFactory
//
//  Created by Michael Charland on 2017-09-23.
//  Copyright © 2017 charland. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var cookiejar:CookieController?

    @IBOutlet weak var shortbreadCookies: UILabel!
    @IBOutlet weak var chocolateChipCookies: UILabel!
    @IBOutlet weak var gingerbreadCookies: UILabel!
    @IBOutlet weak var totalCookies: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        cookiejar = CookieController()
        refreshUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func onGenerateShortbreadCookies(_ sender: Any) {
        cookiejar?.addShortbreadCookie()
        refreshUI()
    }

    @IBAction func onGenerateChocolateChipCookies(_ sender: Any) {
        cookiejar?.addChocolateChipCookie()
        refreshUI()
    }

    @IBAction func onGenerateGingerbreadCookies(_ sender: Any) {
        cookiejar?.addGingerbreadCookie()
        refreshUI()
    }

    @IBAction func onClearAllCookies(_ sender: Any) {
        cookiejar?.reset()
        refreshUI()
    }

    private func refreshUI() {
        let totalGinger = cookiejar!.gingerbreadCookies
        let totalShort = cookiejar!.shortbreadCookies
        let totalChocolateChip = cookiejar!.chocolateChipCookies
        let total = totalGinger + totalShort + totalChocolateChip

        gingerbreadCookies.text = "\(totalGinger)"
        shortbreadCookies.text = "\(totalShort)"
        chocolateChipCookies.text = "\(totalChocolateChip)"
        totalCookies.text = "\(total)"
    }
}

