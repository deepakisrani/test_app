class EnumTest < ApplicationRecord
    include EnumTestAdmin
    # serialize :multiple_values, Array

    MODEL_VALUES = { 'default' => 0 }.merge(ValueName.all.pluck(:name, :id).to_h)
    enum active_enum: MODEL_VALUES

    def multiple_values_enum
        {
            'Key 1' => 'Value 1',
            'Key 2' => 'Value 2',
            'Key 3' => 'Value 3',
            'Key 4' => 'Value 4',
            'Key 5' => 'Value 5'
        }
    end

    def single_value_enum
        {
            'Value 1' => 'Key 1',
            'Value 2' => 'Key 2',
            'Value 3' => 'Key 3',
            'Value 4' => 'Key 4',
            'Value 5' => 'Key 5'
        }
    end
end
