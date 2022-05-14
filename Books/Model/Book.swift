//
//  Book.swift
//  Books
//
//  Created by Misael Chavez Bautista on 13/05/22.
//

import Foundation

struct Book {
    let id = UUID()
    let title: String
    let author: String
    let imageName: String
    let synopsis: String
    let price: Double
    var tags: [Tag] = []
}

extension Book: Equatable {
    static func == (lhs: Book, rhs: Book) -> Bool {
        lhs.id == rhs.id
    }
}

extension Book: Identifiable { }

extension Book: Hashable { }

extension Book: Comparable {
    static func < (lhs: Book, rhs: Book) -> Bool {
        lhs.title < rhs.title
    }
}
extension Book {
    static let mockedData: [Book] = [
        Book(title: "Fotollavero Mexicano",
             author: "Paolo Gasparini",
             imageName: "book1",
             synopsis: "Al cumplirse medio siglo de la publicación del primer fotolibro de Paolo Gasparini Para verte mejor, America latina sale a la luz Fotollavero Mexicano que recoge —como viendo en un retrovisor— su visión de Mexico articulada con fotografías realizadas entre 1970 y el 14 de febrero de 2020. Las palabras de Juan Villoro preñan y extraen de las imágenes nuevas ideas y significaciones mientras el diseño gráfico de Cesar Jara facilita la lectura simultánea de fotografías y textos.",
             price: 905,
             tags: [
                Tag(title: "Novelas")
             ]),
        Book(title: "Historia Secreta de la Bomba Atómica",
             author: "Peter Watson",
             imageName: "book2",
             synopsis: "Peter Watson, el gran historiador intelectual del siglo XX, nos muestra cómo surgió, y cómo fue desechada por los científicos, la idea de construir un arma nuclear y cómo un pequeño grupo de conspiradores, asentados en el poder, tomó por su cuenta, tal como lo revelan los documentos desclasificados en estos últimos años, la decisión de construir y emplear la bomba atómica, que nadie quería realmente y que no era necesaria, contra lo que se dice, para acabar la segunda guerra mundial. El libro de Watson, escrito con su habitual garra narrativa, no sólo desvela un pasado desconocido sino que ilumina un presente sujeto todavía a la amenaza nuclear.",
             price: 899,
             tags: [
                Tag(title: "Historia"),
                Tag(title: "Novelas")
             ]),
        Book(title: "¿Qué es la historia?",
             author: "Edward H. Carr",
             imageName: "book3",
             synopsis: "Desde su publicación por vez primera en 1961, ¿Qué es la historia? de E. H. Carr, se ha confirmado como un clásico de introducción a la materia. Abrazando temas que van desde la objetividad histórica, la sociedad y el individuo y la naturaleza de la causalidad hasta la posibilidad de progreso, Carr nos ofrece un ingenioso e incisivo texto que aún hoy conserva el poder de provocar la controversia. Para esta nueva edición Richard J. Evans ha escrito una extensa introducción en la que expone los orígenes y el impacto de la obra, y confirma su importancia en la era del postmodernismo y el anhelo epistemológico del siglo XXI.",
             price: 549,
             tags: [
                Tag(title: "Historia")
             ]),
        Book(title: "La Poda",
             author: "Laura Beatty",
             imageName: "book4",
             synopsis: "La poda es un libro desgarrador y hermoso, poético y brutal. Una conmovedora metáfora sobre la irresistible llamada de los bosques, que nos presenta un personaje que transita entre la huida, la adaptación y la comprensión de una certeza brutal: la que marca las pautas de una naturaleza aniquilada por el ser humano. A los quince años, Anne reunió el valor suficiente para abandonar su casa, adentrarse en el bosque que cada día veía desde su ventana y no regresar jamás. Aquel era su refugio soñado: un lugar en el que esconderse y alejarse de su caótica y disfuncional familia, convirtiéndose de modo voluntario en una vagabunda. Poco a poco, aprende a buscar comida y a cazar con sus propias manos; a construir una casa con los materiales que el propio bosque le regala, y a descifrar el hipnotizante coro griego de los árboles. Observa a los zorros y a los ciervos, sobrevive a su primer y terrible invierno, y conoce la amarga y cálida belleza del amor.",
             price: 525,
             tags: []),
        Book(title: "La Casa del Tiempo",
             author: "Laura Mancinelli",
             imageName: "book5",
             synopsis: "Hace ya muchos años que Orlando se marchó de su aldea natal, perdida en la campiña italiana. Ahora, su carrera de pintor, al igual que el resto de su vida, se encuentra en una especie de letargo, un leve extravío que pretende encauzar volviendo a los paisajes de su niñez: allí descubrirá que la vieja casona rosa de su maestra está en venta y la compra sin saber muy bien por qué. Sin embargo, como se anticipa ya desde el título, la casa no será un elemento pasivo en esta historia: comienzan a suceder algunos fenómenos insólitos que le desvelan rastros ocultos y le harán creer que tal vez haya sido la casa quien en realidad lo ha elegido a él. En este viaje al pasado, en el que nuestro protagonista se sumerge para encontrar el sentido de su presente, el suspense y la melancolía se alían inesperadamente para alumbrar una bella novela intimista salpicada de atardeceres luminosos, huertos y flores.",
             price: 385,
             tags: []),
    ]
}
