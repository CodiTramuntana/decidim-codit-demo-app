# frozen_string_literal: true

# This migration comes from decidim_blogs (originally 20250515133229)
class RenameBlogPostsEndorsementsCountToLikes < ActiveRecord::Migration[7.0]
  def up
    if column_exists?(:decidim_blogs_posts, :endorsements_count) && !column_exists?(:decidim_blogs_posts, :likes_count)
      rename_column :decidim_blogs_posts, :endorsements_count, :likes_count
    end
  end

  def down
    if column_exists?(:decidim_blogs_posts, :likes_count) && !column_exists?(:decidim_blogs_posts, :endorsements_count)
      rename_column :decidim_blogs_posts, :likes_count, :endorsements_count
    end
  end
end
