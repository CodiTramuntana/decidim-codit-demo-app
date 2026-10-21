# frozen_string_literal: true

# This migration comes from decidim (originally 20231027142329)
# This file has been modified by `decidim upgrade:migrations` task on 2026-02-03 11:53:12 UTC
class ChangeDefaultValueForDecidimEndorsements < ActiveRecord::Migration[6.1]
  def up
    endorsement_table = endorsement_table_name
    return unless endorsement_table

    change_column_default endorsement_table, :decidim_user_group_id, 0
  end

  def down
    endorsement_table = endorsement_table_name
    return unless endorsement_table

    change_column_default endorsement_table, :decidim_user_group_id, nil
  end

  private

  def endorsement_table_name
    return :decidim_endorsements if table_exists?(:decidim_endorsements)
    return :decidim_likes if table_exists?(:decidim_likes)

    nil
  end
end
