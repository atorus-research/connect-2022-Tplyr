library(safetyData)

library(Tplyr)

tab <- tplyr_table(adam_adlbc, TRTA, where=PARAMCD == "CK" & startsWith(VISIT, "WEEK") & BNRIND != "") %>%
  add_layer(
    group_shift(vars(row = BNRIND, column = ANRIND), by = vars(PARAM, VISIT))
  )

b_tab <- tab %>%
  build(metadata = TRUE) %>%
  head()
