#' @export
#'
pdf_beamer <- function(...) {
   tmplt <- system.file("rmarkdown", "templates", "beamer", "resources", "template.tex",
                        package = "ysktmplt")
   rmarkdown::beamer_presentation(template = tmplt, ...)
}

#' @export
#'
pdf_cv <- function(...) {
   tmplt <- system.file("rmarkdown", "templates", "cv", "resources", "template.tex",
                        package = "ysktmplt")
   rmarkdown::pdf_document(template = tmplt, ...)
}

#' @export
#'
pdf_manuscript <- function(...) {
   tmplt <- system.file("rmarkdown", "templates", "manuscript", "resources", "template.tex",
                        package = "ysktmplt")
   rmarkdown::pdf_document(template = tmplt, ...)
}

#' @export
#'
pdf_report <- function(...) {
   tmplt <- system.file("rmarkdown", "templates", "report", "resources", "template.tex",
                        package = "ysktmplt")
   rmarkdown::pdf_document(template = tmplt, ...)
}

#' @export
#'
pdf_solution <- function(...) {
   tmplt <- system.file("rmarkdown", "templates", "solution", "resources", "template.tex",
                        package = "ysktmplt")
   rmarkdown::pdf_document(template = tmplt, ...)
}
