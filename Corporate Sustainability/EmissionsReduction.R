library(tidyverse)

# Reproducible synthetic dataset
esg_data <- tibble(
  year = 2015:2025,
  emissions_co2e = c(500, 505, 510, 515, 512, 498, 495, 492, 490, 488, 485)
)

# Misleading "Before" Chart
ggplot(esg_data %>% filter(year >= 2020), aes(x = year, y = emissions_co2e)) +
  geom_line(color = "forestgreen", linewidth = 1.5) +
  geom_point(color = "darkgreen", size = 3) +
  coord_cartesian(ylim = c(480, 500)) +  # Truncated Y-Axis creates false plunge
  scale_x_continuous(breaks = 2020:2025) +
  labs(
    title = "EcoCorp Net-Zero Commitments Yield Massive Emissions Reduction!",
    subtitle = "Progress since landmark 2020 sustainability pledge",
    x = "Fiscal Year",
    y = "Tons CO2e"
  ) +
  theme_minimal()