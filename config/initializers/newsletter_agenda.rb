# config/initializers/newsletter_agenda.rb

Decidim::NewsletterAgenda.configure do |config|
    # The default background color for the newsletter agenda.
    # leave it empty (nil) to use the configured organization's main color.
    # this color can be overriden in the newsletter template builder.
    # hex color code with #, e.g. "#733BCE"
    config.default_background_color = "#733BCE"

    # The default font color over background for the newsletter agenda.
    config.default_font_color_over_bg = "#FFFFFF"

    # The default address text for the newsletter agenda.
    config.default_address_text = <<~ADDRESS
      <b>CodiTamuntana</b><br>
      <b>Your idea our code</b><br>
      Carrer Pic de Peguera 15 - 17003 Girona <a href="https://coditramuntana.com">https://coditramuntana.com</a><br>
      <a href="mailto:info@coditramuntana.com">info@coditramuntana.com</a>
    ADDRESS
end
