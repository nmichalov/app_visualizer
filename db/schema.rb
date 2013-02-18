# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130218060626) do

  create_table "app_directory_nodes", :force => true do |t|
    t.string  "name"
    t.integer "parent_directory_node_id"
  end

  add_index "app_directory_nodes", ["parent_directory_node_id"], :name => "index_app_directory_nodes_on_parent_directory_node_id"

  create_table "app_files", :force => true do |t|
    t.integer "app_directory_node_id"
    t.string  "name"
  end

  add_index "app_files", ["app_directory_node_id"], :name => "index_app_files_on_app_directory_node_id"

  create_table "method_calls", :force => true do |t|
    t.string  "line"
    t.integer "line_number"
    t.integer "app_file_id"
    t.integer "namespace_id"
    t.integer "namespace_method_id"
  end

  add_index "method_calls", ["app_file_id"], :name => "index_method_calls_on_app_file_id"
  add_index "method_calls", ["namespace_id"], :name => "index_method_calls_on_namespace_id"
  add_index "method_calls", ["namespace_method_id"], :name => "index_method_calls_on_namespace_method_id"

  create_table "namespace_methods", :force => true do |t|
    t.string  "name"
    t.integer "namespace_id"
    t.integer "app_file_id"
  end

  add_index "namespace_methods", ["app_file_id"], :name => "index_namespace_methods_on_app_file_id"
  add_index "namespace_methods", ["namespace_id"], :name => "index_namespace_methods_on_namespace_id"

  create_table "namespaces", :force => true do |t|
    t.string  "namespace"
    t.integer "superspace_id"
  end

  add_index "namespaces", ["superspace_id"], :name => "index_namespaces_on_superspace_id"

end
