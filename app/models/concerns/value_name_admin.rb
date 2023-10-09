module ValueNameAdmin
    extend ActiveSupport::Concern

    included do
        rails_admin do
            create do
                field :name
            end

            edit do
                field :name
            end

            list do
                field :name
            end
        end
    end
end