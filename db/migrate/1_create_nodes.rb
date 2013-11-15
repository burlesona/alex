Sequel.migration do
  up do
    create_table :nodes do
      primary_key :id
      Integer :parent_id
      Integer :content_id
      String :type
    end
  end

  down do
    drop_table :nodes
  end
end
