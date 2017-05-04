*** Settings ***
Resource                                       client_form_page_and_keywords.robot


*** Variables ***
${client_list_pg_label_on_page}                List

${client_list_pg_button_create_user}           xpath=//a[@class='btn btn-primary']
${client_list_pg_button_index}                 xpath=//a[@class='btn btn-default']
${client-id}                                   13

${client_list_pg_label_message}                Client was successfully deleted. 

${client_list_pg_button_delete_user}           xpath=//a[text()='Delete']
${client_list_pg_button_index}                 xpath=//*[@id="j_idt49"]/a[2]   
${client_list_pg_button_on_page}               xpath=//*[@id="j_idt49"]/a[1]  
#xpath=//td[text()=${room_number}]/following-sibling::td/a[text()='Edit']
#xpath=//*[@id="j_idt49"]/table/tbody/tr[5]/td[7]/a[3]          



*** keywords ***
navigate_to_create_client_form
    Page should contain element                ${client_list_pg_button_create_user}
    Click element                              ${client_list_pg_button_create_user}
    Wait until page contains                   ${client_form_pg_label_on_page}


Delete_an_existing_client
    #Wait until page contains                  ${client_list_pg_button_on_page} 
    Click element                             ${client_list_pg_button_delete_user}
    Wait until page contains                  ${client_list_pg_label_message}
       