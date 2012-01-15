class Record

  def self.all(table_name, fields)
    c = get_connection
#    disconnect!
    c.connection.execute("SELECT #{fields.join(',')} FROM #{table_name.to_s}")
  end

  def self.find(table_name, unique_field, field_value)
    c = get_connection
    c.connection.execute("SELECT * FROM #{table_name.to_s} WHERE #{unique_field}=#{field_value}")
  end

  def self.get_connection
    conn = Database_Connection.first
    new_conn = create_class("Connection#{conn.id}", ActiveRecord::Base)
    new_conn.establish_connection(
        :adapter => conn.adapter || "postgresql",
        :host => conn.host || "localhost",
        :username => conn.username || "postgres",
        :password => conn.password || "qwedsa",
        :database => conn.database || "pg_service_cucumberxxx"
    )
  end

  def self.create_class(class_name, superclass, &block)
    klass = Class.new superclass, &block
    Object.const_set class_name, klass
  end

end
