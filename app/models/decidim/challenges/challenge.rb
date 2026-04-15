# frozen_string_literal: true

# Stub model to allow migrations from decidim-challenges to run
# when the gem is not loaded (commented out in Gemfile).
# This file is safe to remove if the gem is re-enabled.

module Decidim
  module Challenges
    class Challenge < ApplicationRecord
      self.table_name = "decidim_challenges_challenges"
    end
  end
end
