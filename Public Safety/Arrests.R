library(tidyverse)

# Reproducible synthetic dataset
set.seed(42)
policing_data <- tibble(
  district = c("District A", "District B", "District C", "District D", "District E"),
  patrol_hours = c(1200, 1100, 400, 350, 300),
  arrests = c(450, 410, 120, 95, 80),
  reported_incidents = c(200, 210, 195, 205, 190)
)

# Misleading "Before" Chart
ggplot(policing_data, aes(x = reorder(district, -arrests), y = arrests)) +
  geom_col(fill = "firebrick4") +
  labs(
    title = "CRIME WAVE: High-Risk Zones Requiring Immediate Intervention",
    subtitle = "Total Arrest Volumes by City District (Current Fiscal Year)",
    x = "Target Area",
    y = "Arrests Made"
  ) +
  theme_minimal() +
  theme(
    plot.title = element_text(color = "red", face = "bold", size = 14),
    panel.background = element_rect(fill = "black"),
    panel.grid = element_blank()
  )