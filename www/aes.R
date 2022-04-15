library(safetyData)
library(Tplyr)

tab <- tplyr_table(adam_adae, TRTA, where = AEBODSYS == "GENERAL DISORDERS AND ADMINISTRATION SITE CONDITIONS") %>%
  add_layer(
    group_count(vars(AEBODSYS, AEDECOD))
  )

b_tab <- tab %>%
  build(metadata = TRUE) %>%
  head()
