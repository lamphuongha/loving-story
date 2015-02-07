class Setting < ActiveRecord::Base
  SETTING_KEY = "all_text_settings"

  after_commit :flush_cache

  class << self
    def cached_settings
      fetch_cached
    end

    def map_data
      all.
      map { |setting| { setting.key => setting.value } }
    end

    def fetch_cached
      Rails.cache.fetch(SETTING_KEY) { map_data }
    end
  end

  def flush_cache
    Rails.cache.delete(SETTING_KEY)
  end
end
