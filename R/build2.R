# An optional custom script to run after Hugo builds your site.
from <- file.path(getwd(), "public")
to <- file.path(dirname(getwd()), "Rnssp-rmd-templates", "docs")
fs::dir_copy(from, to, overwrite = TRUE)
