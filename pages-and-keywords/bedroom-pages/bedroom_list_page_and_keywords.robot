*** Settings ***
Resource                                       bedroom_form_page_and_keywords.robot


*** Variables ***
${bedroom_list_pg_label_on_page}                List
${bedroom_list_pg_button_create_bedroom}        xpath=//*[@id="j_idt49"]/a[1]
${bedroom_list_pg_button_index}                 xpath=//*[@id="j_idt49"]/a[2]


*** keywords ***
navigate_to_create_bedroom_form
    Page should contain element                ${bedroom_list_pg_button_create_bedroom}
    Click element                              ${bedroom_list_pg_button_create_bedroom}
    Wait until page contains                   ${bedroom_form_pg_label_on_page}