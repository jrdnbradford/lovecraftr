#!/usr/bin/env Rscript

# This script generates the hex sticker for the packages


signature_url <- "https://upload.wikimedia.org/wikipedia/commons/a/a7/Lovecraft_signature_1924-02-02.png"
signature_dest_path <- file.path("data-raw", "stickers", "signature.png")
raw_logo_path <- file.path("data-raw", "stickers", "logo-raw.png")

download.file(signature_url, signature_dest_path)

hexSticker::sticker(
  signature_dest_path,
  package = "lovecraftr",
  url = "{lovecraftr}",
  spotlight = FALSE,
  h_size = 1.5,
  h_color = "black",
  h_fill = "#fdfdf2",
  p_size = 0.5,
  p_y = 0.1,
  s_x = 1,
  s_y = 0.95,
  s_width = 0.95,
  u_size = 4,
  u_y = 0.1,
  u_color = "black",
  filename = raw_logo_path,
  dpi = 600
)

usethis::use_logo(raw_logo_path)
