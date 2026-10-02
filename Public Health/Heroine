library(tidyverse)

# Reproducible synthetic dataset
health_data <- tibble(
  demographic = c("White", "Black", "Hispanic", "Indigenous", "Unreported/Missing"),
  overdoses = c(1200, 480, 410, 220, 350),
  population = c(1000000, 200000, 250000, 30000, NA)
)

# Misleading "Before" Chart
ggplot(health_data %>% filter(!is.na(population)), aes(x = reorder(demographic, -overdoses), y = overdoses)) +
  geom_col(fill = "slategrey") +
  labs(
    title = "Substance Abuse Metrics by Category",
    subtitle = "Total Volume of Fatal Incidents (2025)",
    x = "Demographic Code",
    y = "Count"
  ) +
  theme_bw()