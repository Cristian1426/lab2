class Attack < ApplicationRecord
    belongs_to :monster
    belongs_to :victim
    validate :limite
    def limite
        if (monster.scare_level > 5 && (2022 - victim.birthdate.year) < 18)
          errors.add(:base,:invalid, message: "Es un abuso")
        end
    end
end