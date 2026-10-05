# frozen_string_literal: true

require "spec_helper"

describe "Homepage" do
  include Decidim::SanitizeHelper

  let!(:organization) do
    create(
      :organization,
      name: { ca: "Decidim Application", en: "Decidim Application", es: "Decidim Application" },
      default_locale: :ca,
      available_locales: [:ca, :en, :es]
    )
  end
  let!(:hero) do
    create(
      :content_block,
      organization:,
      scope_name: :homepage,
      manifest_name: :hero,
      settings: {
        welcome_text: {
          ca: "Benvinguda a Decidim Application",
          en: "Welcome to Decidim Application",
          es: "Bienvenida a Decidim Application"
        }
      }
    )
  end
  let!(:sub_hero) { create(:content_block, organization:, scope_name: :homepage, manifest_name: :sub_hero) }

  before do
    switch_to_host(organization.host)
    I18n.with_locale(:ca) do
      visit decidim.root_path(locale: :ca)
    end
  end

  it "renders the home page" do
    expect(page).to have_css("header")
    expect(page).to have_title(organization.name[:ca])
    expect(page).to have_content(organization.name[:ca])
  end

  it "loads and shows organization name and main blocks" do
    expect(page).to have_content(organization.name[:ca])

    hero_welcome_text = hero.settings.welcome_text.with_indifferent_access[:ca]
    expect(page).to have_content(hero_welcome_text)

    subhero_msg = I18n.with_locale(:ca) { translated(organization.description) }
                  .gsub(%r{</p>\s+<p>}, "<br><br>")
                  .gsub(%r{<p>(((?!</p>).)*)</p>}mi, "\\1")
                  .gsub(%r{<script>(((?!</script>).)*)</script>}mi, "\\1")
    expect(page).to have_content(subhero_msg)
  end
end
