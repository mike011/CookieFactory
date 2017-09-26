class CookieController {

    var gingerbreadCookies = 0
    var shortbreadCookies = 0
    var chocolateChipCookies = 0

    func addGingerbreadCookie() {
        gingerbreadCookies = gingerbreadCookies + 1
    }

    func addShortbreadCookie() {
        shortbreadCookies = shortbreadCookies + 1
    }

    func addChocolateChipCookie() {
        chocolateChipCookies = chocolateChipCookies + 1
    }

    func reset() {
        gingerbreadCookies = 0
        shortbreadCookies = 0
        chocolateChipCookies = 0
    }
}
