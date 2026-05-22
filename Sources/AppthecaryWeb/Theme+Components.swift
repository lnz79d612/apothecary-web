//
//  Theme+Components.swift
//  AppthecaryWeb
//
//  Created by Lorenzo Pacini on 22/05/2026.
//


import Foundation
import Publish
import Plot

// 1. Estensione per gestire l'intestazione <head> in modo pulito
extension Node where Context == HTML.DocumentContext {
    static func glassHead(for site: AppthecaryWeb, title: String) -> Node {
        .head(
            .meta(.charset(.utf8)),
            .meta(.name("viewport"), .content("width=device-width, initial-scale=1.0")),
            .title(title),
            .link(.rel(.stylesheet), .href("https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css")),
            .style(ThemeCSS.glassStyle) // Richiama il CSS dal file separato
        )
    }
}

// 2. Estensioni per i componenti ripetitivi del corpo della pagina
extension Node where Context == HTML.BodyContext {
    
    static func backgroundBlobs() -> Node {
        .group(
            .div(.class("blob blob-1")),
            .div(.class("blob blob-2")),
            .div(.class("blob blob-3"))
        )
    }
    
    static func glassHeader() -> Node {
        .header(
            .div(.class("logo"), .a(.href("/"), .text("Appthecary"))),
            .nav(
                .a(.href("/catalogo/"), .text("Il Catalogo")),
                .a(.href("/meccanica/"), .text("Meccanica"))
            )
        )
    }
    
    static func glassFooter() -> Node {
        .footer(
            .div(.class("social-links"),
                .a(.href("#"), .target(.blank), .i(.class("fa-brands fa-instagram"))),
                .a(.href("#"), .target(.blank), .i(.class("fa-brands fa-tiktok")))
            ),
            .div(.class("copyright"), .text("© 2026 Appthecary. Tutti i diritti riservati."))
        )
    }
}