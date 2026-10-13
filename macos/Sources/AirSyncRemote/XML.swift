import Foundation

/// Tiny DOM for the small UPnP/SOAP documents the STB returns. Element names are namespace-local.
final class XMLNode {
    let name: String
    var text = ""
    var children: [XMLNode] = []

    init(name: String) {
        self.name = name
    }

    func child(_ name: String) -> XMLNode? {
        children.first { $0.name.caseInsensitiveCompare(name) == .orderedSame }
    }

    /// Depth-first search for the first element with this name.
    func find(_ name: String) -> XMLNode? {
        if self.name.caseInsensitiveCompare(name) == .orderedSame { return self }
        for c in children {
            if let f = c.find(name) { return f }
        }
        return nil
    }

    func findAll(_ name: String) -> [XMLNode] {
        var out: [XMLNode] = []
        if self.name.caseInsensitiveCompare(name) == .orderedSame { out.append(self) }
        for c in children { out += c.findAll(name) }
        return out
    }

    var trimmedText: String { text.trimmingCharacters(in: .whitespacesAndNewlines) }

    static func parse(_ data: Data) -> XMLNode? {
        let builder = Builder()
        let parser = XMLParser(data: data)
        parser.shouldProcessNamespaces = true
        parser.delegate = builder
        return parser.parse() ? builder.root : builder.root
    }

    private final class Builder: NSObject, XMLParserDelegate {
        var root: XMLNode?
        var stack: [XMLNode] = []

        func parser(_ parser: XMLParser, didStartElement elementName: String, namespaceURI: String?,
                    qualifiedName qName: String?, attributes attributeDict: [String: String] = [:]) {
            let node = XMLNode(name: elementName)
            if let parent = stack.last { parent.children.append(node) } else { root = node }
            stack.append(node)
        }

        func parser(_ parser: XMLParser, didEndElement elementName: String, namespaceURI: String?, qualifiedName qName: String?) {
            _ = stack.popLast()
        }

        func parser(_ parser: XMLParser, foundCharacters string: String) {
            stack.last?.text += string
        }
    }
}

extension String {
    var xmlEscaped: String {
        replacingOccurrences(of: "&", with: "&amp;").replacingOccurrences(of: "<", with: "&lt;")
            .replacingOccurrences(of: ">", with: "&gt;").replacingOccurrences(of: "\"", with: "&quot;")
    }
}
