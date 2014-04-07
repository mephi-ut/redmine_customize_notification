class AddEnabledNotificationsToUserPreferences < ActiveRecord::Migration
  def self.up
    add_column :user_preferences, :notify_for_all_fields, :boolean, :default => true
    add_column :user_preferences, :enabled_notifications, :text
    add_column :user_preferences, :custom_field_notifications, :text
  end
  
  def self.down
    remove_column :user_preferences, :notify_for_all_fields
    remove_column :user_preferences, :enabled_notifications
    remove_column :user_preferences, :custom_field_notifications
  end
end
