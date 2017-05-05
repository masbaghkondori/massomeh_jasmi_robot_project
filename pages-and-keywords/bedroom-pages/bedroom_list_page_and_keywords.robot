*** Settings ***
Resource                                       bedroom_form_page_and_keywords.robot


*** Variables ***
${bedroom_list_pg_label_on_page}                List
${bedroom_list_pg_button_create_bedroom}        xpath=//*[@id="j_idt49"]/a[1]
${bedroom_list_pg_button_index}                 xpath=//*[@id="j_idt49"]/a[2]
${bedroom_pg_edit_button}                       xpath= //*[@id="j_idt49"]/table/tbody/tr[3]/td[8]/a[2]
${bedroom_pg_price_field}                       xpath=//*[@id="priceDaily"]   
${bedroom_pg_price_input}                       270.o 
${bedroom_pg_status_field}                      xpath=//*[@id="bedroomStatusId"]
${bedroom_pg_status_submenue}                   xpath=//*[@id="bedroomStatusId"]
${bedroom_pg_status_option}                     xpath=//*[@class='form-control']//*[text()='BUSY']
${room_number}                                	200 
${bedroom_list_pg_button_edit_bedroom}          xpath=//*[@id="j_idt49"]/table/tbody/tr[6]/td[8]/a[2]
${bedroom_form_pg_edit_label_on_page}           Edit Bedroom
${bedroom_pg_element_on_the_edit_save}          xpath=//*[@id="j_idt50"]/a[1]
${bedroom_form_pg_edit_label_on_editpage}       Bedroom was successfully updated.
${bedroom_pg_new_price}                         110.00







*** keywords ***
navigate_to_create_bedroom_form
    Page should contain element                ${bedroom_list_pg_button_create_bedroom}
    Click element                              ${bedroom_list_pg_button_create_bedroom}
    Wait until page contains                   ${bedroom_form_pg_label_on_page}
    
navigate_to_bedroom_edit_page
    Page should contain element                ${bedroom_list_pg_button_edit_bedroom}  
    Click element                              ${bedroom_list_pg_button_edit_bedroom}
    Wait until page contains                   ${bedroom_form_pg_edit_label_on_page}

    