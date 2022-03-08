class AddResource < SeedMigration::Migration
  def up
    Resource.create!([
                       { name: 'user', description: 'create schema for resource called User' },
                       { name: 'occupation', description: 'create schema for resource called Occupation' }
                     ])
  end

  def down
    Resource.destroy_all
  end
end
