class Puppy

   attr_accessor :name, :breed, :months_old
   @@all = Puppy.create(:name, :breed, :months_old)

   def initialize(name, breed, months_old)
    @name = name
    @breed = breed
    @months_old = months_old
    @@all << Puppy
   end

   def self.all
      Puppy
   end



end
