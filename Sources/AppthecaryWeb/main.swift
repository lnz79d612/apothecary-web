import Foundation
import Publish
import Plot

// La struttura principale che definisce il tuo sito web.
struct AppthecaryWeb: Website {
    enum SectionID: String, WebsiteSectionID {
        case catalogo
        case meccanica
    }

    struct ItemMetadata: WebsiteItemMetadata { }

    // Configurazione del dominio definitivo
    var url = URL(string: "https://www.appthecary.app")!
    var name = "Appthecary"
    var description = "Artigianato Digitale. Sviluppo software indipendente con design rigoroso e puro."
    var language: Language { .italian }
    var imagePath: Path? { nil }
}

// Configuriamo una pipeline esplicita di passaggi per poter inserire
// il file app-ads.txt direttamente nella radice del sito (Output/)
try AppthecaryWeb().publish(using: [
    .addMarkdownFiles(),
    .copyResources(),
    .generateHTML(withTheme: .glassmorphism),
    .generateRSSFeed(including: [.meccanica]),
    .generateSiteMap(),
    
    // Passaggio personalizzato per AdMob corretto usando la scrittura diretta del file di Output
    .step(named: "Copia app-ads.txt nella radice del sito") { context in
        let file = try context.file(at: "Resources/app-ads.txt")
        try context.createOutputFile(at: "app-ads.txt").write(file.read())
    }
])
