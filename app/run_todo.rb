
## This todo list app with Active record has certain restriction and limitations.
## This todo list app only supports 1 user.
## There are only a number of commands that can be passed in order to make the app work.

## 1. The added lists can only be one string (with underscores if needed).
## The syntax to add a new list is 'add:new_list name_of_list'

## 2. To display the lists in the database the syntax is 'list:all'

## 3. To delete a list the syntax is 'delete:name_of_list'. This deletes all the 
## task in the list. In the model list we have used :dependent :destroy to specify
## this behaviour.

## 4. To display outstanding tasks in a list
## The syntax is "list:outstanding name_of_list"

## 5. To display completed tasks in a list
## The syntax is "list:completed name_of_list"

## 6. To add a task to a list
## The syntax is "add:name_of_list task"

## 7. To complete a task in a list
## The syntax is "complete:name_of_list task"

## 8. To delete a task in a list
## The syntax is "delete:name_of_list task"

## 9. To list all the tasks in a specific list
## The syntax is "list:list_name"

## 10. To add tags to a task
## The syntax is "tag:task_id *tags"

require_relative 'controller/parser.rb'

 Parser.new(ARGV)
