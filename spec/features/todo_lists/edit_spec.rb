require 'spec_helper'

		describe "Editing todo lists" do
			It "updates a todo list successfully with correct information" do

			todo_lists = TodoList.create(title:"Groceries", description: "Grocery list.")	




			visit "/todo_lists"
			within "#todo_list_#{todo_list.id}"
			click_link "Edit"

		end



		fill_in "Title", with:"New title"
		fill_in "Description", with:"New description"
		click_button "Update Todo list"

		expect(page).to have_content("Todo list was successfully updated.")
		expect(todo_list.title).to eq("New title")
		expect()




	end