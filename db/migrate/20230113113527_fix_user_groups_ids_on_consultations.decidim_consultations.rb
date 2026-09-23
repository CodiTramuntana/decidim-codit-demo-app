# frozen_string_literal: true

# This migration comes from decidim_consultations (originally 20181003082318)

class FixUserGroupsIdsOnConsultations < ActiveRecord::Migration[5.2]
  class UserGroup < ApplicationRecord
    self.table_name = :decidim_users
    self.inheritance_column = nil # disable the default inheritance

    default_scope { where(type: "Decidim::UserGroup") }
  end

  # rubocop:disable Rails/SkipsModelValidations
  def change
    UserGroup.find_each do |group|
      old_id = group.extended_data["old_user_group_id"]
      next unless old_id

      Decidim::Consultations::Vote
        .where(decidim_user_group_id: old_id)
        .update_all(decidim_user_group_id: group.id)
    end
  end
  # rubocop:enable Rails/SkipsModelValidations
end
