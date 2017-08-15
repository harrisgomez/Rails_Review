class User < ApplicationRecord
    validates :first_name, :last_name, :email_address, :age, presence: true
    validates :first_name, :last_name, length: {minimum: 2}
    validates :age, numericality: {only_integer: true, greater_than_or_equal_to: 10, less_than: 150}

    after_create :successfully_created
    after_update :successfully_updated
    before_validation :default_age, on: [:create]

    # instance method
    def full_name
        "#{self.first_name} #{self.last_name}"
    end

    # class method
    def self.average_age
        self.sum(:age) / self.count
    end

    private
        def successfully_created
            puts 'Successfully created a new user'
        end

        def successfully_updated
            puts 'Successfully updated an existing user'
        end

        def default_age
            self.age = 0 unless self.age?
        end
end
