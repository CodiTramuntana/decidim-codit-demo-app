# frozen_string_literal: true

Decidim::NewsletterAgenda.configure do |config|
  # The default background color for the newsletter agenda.
  # leave it empty (nil) to use the configured organization's main color.
  # this color can be overriden in the newsletter template builder.
  # hex color code with #, e.g. "#733BCE"
  config.default_background_color = "#733BCE"

  # The default font color over background for the newsletter agenda.
  config.default_font_color_over_bg = "#FFFFFF"

  # The default address text for the newsletter agenda.
  # config.default_address_text = <<~ADDRESS
  #   <b>Canòdrom</b><br>
  #   <b>Ateneu d'Innovació Digital i Democràtica</b><br>
  #   C/Concepció Arenal 165 - 09027 Barcelona <a href="https://canodrom.barcelona">canodrom.barcelona</a><br>
  #   <a href="mailto:hola@canodrom">hola@canodrom.com</a>
  # ADDRESS
end
