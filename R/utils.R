#' @export
pdf_beamer <- function(...) {
   tmplt <- system.file("rmarkdown", "templates", "beamer", "resources", "template.tex",
                        package = "ysktmplt")
   rmarkdown::beamer_presentation(template = tmplt, ...)
}

#' @export
pdf_cv <- function(...) {
   tmplt <- system.file("rmarkdown", "templates", "cv", "resources", "template.tex",
                        package = "ysktmplt")
   rmarkdown::pdf_document(template = tmplt, ...)
}

#' @export
pdf_manuscript <- function(...) {
   tmplt <- system.file("rmarkdown", "templates", "manuscript", "resources", "template.tex",
                        package = "ysktmplt")
   out <- bookdown::pdf_document2(template = tmplt, toc = FALSE, ...)

   out$knitr$opts_chunk$prompt = TRUE
   # out$knitr$opts_chunk$comment = NA
   out$knitr$opts_chunk$highlight = FALSE
   out$knitr$opts_chunk$tidy = FALSE
   out$knitr$opts_chunk$R.options = list(prompt = "R> ", continue = "+ ")

   out
}

#' @export
pdf_report <- function(...) {
   tmplt <- system.file("rmarkdown", "templates", "report", "resources", "template.tex",
                        package = "ysktmplt")
   bookdown::pdf_document2(template = tmplt, toc = FALSE, ...)
}

#' @export
pdf_solution <- function(...) {
   tmplt <- system.file("rmarkdown", "templates", "solution", "resources", "template.tex",
                        package = "ysktmplt")
   rmarkdown::pdf_document(template = tmplt, ...)
}

#' @export
pdf_poster <- function(...) {
   tmplt <- system.file("rmarkdown", "templates", "poster", "resources", "template.tex",
                        package = "ysktmplt")
   rmarkdown::pdf_document(template = tmplt, ...)
}
