ActiveSupport.on_load :active_record do
  include ActiveModel::ForbiddenAttributesProtection
end
