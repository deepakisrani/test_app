module EnumTestAdmin
    extend ActiveSupport::Concern

    included do
        rails_admin do
            create do
                field :entry
                field :single_value, :enum
                field :multiple_values, :enum do
                    multiple true
                end
                field :active_enum
            end

            edit do
                field :entry
                field :single_value, :enum
                field :multiple_values, :enum do
                    multiple true
                end
                field :active_enum
            end
        end
    end
end