enum CookieType {
    case gingerbread
    case shortbread
    case chocolateChip
}

class Cookie {

    let type : CookieType

    init(_ type : CookieType) {
        self.type = type
    }
}
