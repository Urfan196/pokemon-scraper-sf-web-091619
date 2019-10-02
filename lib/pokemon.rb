class Pokemon

attr_accessor :id, :name, :type, :db

  def initialize(id:, name:, type:, db:)
    @id= id
    @name = name
    @type = type
    @db=db
  end

  def save
   sql = <<-SQL
     INSERT INTO songs (name, album)
     VALUES (?, ?)
   SQL

   DB[:conn].execute(sql, self.name, self.album)

@id = DB[:conn].execute("SELECT last_insert_rowid() FROM songs")[0][0] 
 end
end


end
