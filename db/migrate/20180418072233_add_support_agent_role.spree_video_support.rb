# This migration comes from spree_video_support (originally 20160425055750)
class AddSupportAgentRole < SpreeExtension::Migration[4.2]
  def up
    Spree::Role.find_or_create_by!(name: 'support_agent')
  end
end
