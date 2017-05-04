*** Variables ***
${user_pg_label_on_page}                   List
${User_form_pg_label_on_page}                  Create New User
${User_form_pg_access_denied_message}          Access Denied!

${User_create_form_pg_button_create}           xpath=//*[@id="j_idt49"]/a[1]




***Keywords***
create_a_new_user_logging_in_as_normal_user
    Page should contain                       ${User_form_pg_label_on_page} 
    click element                             ${User_create_form_pg_button_create}
    Wait until page contains                  ${User_form_pg_access_denied_message}       