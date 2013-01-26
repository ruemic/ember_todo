class Task < ActiveRecord::Base
  belongs_to :list



  def is_done=(flag)
    self.done = flag
  end

  def is_done
    done?
  end
end
