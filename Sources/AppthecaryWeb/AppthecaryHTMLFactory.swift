import Foundation
import Publish
import Plot

extension Theme where Site == AppthecaryWeb {
    static var glassmorphism: Self {
        Theme(htmlFactory: AppthecaryHTMLFactory())
    }
}

struct AppthecaryHTMLFactory: HTMLFactory {
    typealias Site = AppthecaryWeb
    
    // 1. HOME PAGE
    func makeIndexHTML(for index: Index, context: PublishingContext<AppthecaryWeb>) throws -> HTML {
        HTML(
            .glassHead(for: context.site, title: context.site.name),
            .body(
                .backgroundBlobs(),
                .glassHeader(),
                .main(
                    .section(.class("hero glass-card"),
                        .h1("Artigianato Digitale"),
                        .p("Sviluppo software indipendente. Un ecosistema pulito, trasparente e rigoroso.")
                    ),
                    .section(.class("catalog-grid"),
                        // Scheda ZenFlow
                        .div(.class("glass-card app-card"),
                            .img(.src("/Images/icon-zenflow.png"), .alt("Icona ZenFlow"), .class("app-icon")),
                            .h3("ZenFlow"),
                            .p("Gestisci il tuo budget personale con serenità e controllo. Un approccio minimalista e pulito alle tue finanze quotidiane."),
                            .a(.href("/catalogo/zenflow/index.html"), .class("read-more"), .text("Scopri l'App →"))
                        ),
                        // Scheda VirtualPassport
                        .div(.class("glass-card app-card"),
                            .div(.class("app-icon-placeholder"), .i(.class("fa-solid fa-file-invoice"))),
                            .h3("VirtualPassport"),
                            .p("Traccia e pianifica i tuoi viaggi collezionando timbri virtuali da tutto il mondo."),
                            .a(.href("#"), .class("read-more"), .text("Scopri l'App →"))
                        ),
                        // Scheda AgendaDirettore
                        .div(.class("glass-card app-card"),
                            .div(.class("app-icon-placeholder"), .i(.class("fa-solid fa-file-lines"))),
                            .h3("AgendaDirettore"),
                            .p("Strumento professionale per l'organizzazione e la ricerca rapida dei contatti."),
                            .a(.href("#"), .class("read-more"), .text("Scopri l'App →"))
                        )
                    )
                ),
                .glassFooter()
            )
        )
    }

    // 2. PAGINA DETTAGLIO (App/Articolo)
    func makeItemHTML(for item: Item<AppthecaryWeb>, context: PublishingContext<AppthecaryWeb>) throws -> HTML {
        HTML(
            .glassHead(for: context.site, title: "\(item.title) | \(context.site.name)"),
            .body(
                .backgroundBlobs(),
                .glassHeader(),
                .main(
                    .article(.class("glass-card article-card"),
                        .contentBody(item.body)
                    )
                ),
                .glassFooter()
            )
        )
    }

    // 3. INDICE SEZIONE (Catalogo/Meccanica)
    func makeSectionHTML(for section: Section<AppthecaryWeb>, context: PublishingContext<AppthecaryWeb>) throws -> HTML {
        HTML(
            .glassHead(for: context.site, title: "\(section.title) | \(context.site.name)"),
            .body(
                .backgroundBlobs(),
                .glassHeader(),
                .main(
                    .h1(.class("section-title"), .text(section.title)),
                    .ul(
                        .class("item-list"),
                        .forEach(section.items) { item in
                            .li(.class("glass-card list-item-card"),
                                .h2(.a(.href("\(item.path.string)/index.html"), .text(item.title))),
                                .p(.text(item.description))
                            )
                        }
                    )
                ),
                .glassFooter()
            )
        )
    }
    
    // 4. PAGINE STANDALONE
    func makePageHTML(for page: Page, context: PublishingContext<AppthecaryWeb>) throws -> HTML {
        HTML(
            .glassHead(for: context.site, title: "\(page.title) | \(context.site.name)"),
            .body(
                .backgroundBlobs(),
                .glassHeader(),
                .main(
                    .article(.class("glass-card article-card"),
                        .contentBody(page.body)
                    )
                ),
                .glassFooter()
            )
        )
    }
    
    func makeTagListHTML(for page: TagListPage, context: PublishingContext<AppthecaryWeb>) throws -> HTML? { nil }
    func makeTagDetailsHTML(for page: TagDetailsPage, context: PublishingContext<AppthecaryWeb>) throws -> HTML? { nil }
}
