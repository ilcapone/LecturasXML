


risk.df <- data.frame(zona = c("DMZ","Correo","Backend"), bajo = c(132,58,250), medio = c(87,32,218), alto = c(23,5,52), stringsAsFactors = F)

tidy.risk <- tidyr::gather(data = risk.df, key = "risk", value = "n_events", 2:4)

df.risk <- tidyr::spread(data = tidy.risk,   key = "risk", value = "n_events")

dplyr::filter(risk.df, alto >= 10)

dplyr::filter(tidy.risk, n_events >= 10, risk %in% c("medio","alto"))


