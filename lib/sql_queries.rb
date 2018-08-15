# Write your sql queries in this file in the appropriate method like the example below:
#
# def select_category_from_projects
# "SELECT category FROM projects;"
# end

# Make sure each ruby method returns a string containing a valid SQL statement.

def selects_the_titles_of_all_projects_and_their_pledge_amounts_alphabetized_by_name
"SELECT projects.title,sum(pledges.amount) FROM projects inner join pledges on projects.id =pledges.project_id group by projects.title "
end

def selects_the_user_name_age_and_pledge_amount_for_all_pledges_alphabetized_by_name
"SELECT users.name,users.age,sum(pledges.amount) FROM pledges INNER JOIN users ON users.id=pledges.user_id group by users.name"
end

def selects_the_titles_and_amount_over_goal_of_all_projects_that_have_met_their_funding_goal
"SELECT projects.title,sum(pledges.amount)-projects.funding_goal  FROM  projects  inner join pledges ON projects.id=pledges.project_id GROUP BY projects.title HAVING sum(pledges.amount)>=projects.funding_goal"
end

def selects_user_names_and_amounts_of_all_pledges_grouped_by_name_then_orders_them_by_the_amount_and_users_name
"SELECT users.name,sum(pledges.amount) FROM pledges INNER JOIN users ON users.id=pledges.user_id GROUP BY users.name ORDER BY sum(pledges.amount),users.name"
end

def selects_the_category_names_and_pledge_amounts_of_all_pledges_in_the_music_category
"SELECT projects.category,pledges.amount FROM projects INNER JOIN pledges ON projects.id=pledges.project_id WHERE projects.category='music'"
end

def selects_the_category_name_and_the_sum_total_of_the_all_its_pledges_for_the_books_category
"SELECT projects.category,sum(pledges.amount) FROM projects INNER JOIN pledges ON projects.id=pledges.project_id GROUP BY projects.category HAVING projects.category='books'"
end
