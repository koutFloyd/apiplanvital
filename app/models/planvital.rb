class Planvital < ApplicationRecord
    before_action :authenticate_user!
end
