*** variables ***     
${bill_form_pg_label_on_page}                         Create New Bill
${reservation_code}                           	      5
${bill_pg_button_create_bill}                         xpath=//*[@id="j_idt49"]/a[1]
${bill_pg_button_create_bill}                         xpath=//*[@id="j_idt49"]/a[1]
${bill_create_form_pg_button_save}                    xpath=//*[@id="j_idt50"]/a[1] 
${bill_create_form_pg_button_show_bills}              xpath=//a[text()='Show All Bills']  
${bill_create_form_pg_button_index}                   xpath=//a[text()='Index']
${bill_create_form_pg_field_status}                   id=j_idt50:billStatusId
${bill_create_form_pg_status_option}                  xpath=//*[@id="j_idt50:billStatusId"]/option[2]
${bill_create_form_pg_field_ Reservation}             id=j_idt50:hotelReservationId
${bill_create_form_pg_ Reservation_option}            xpath=//*[@id="j_idt50:hotelReservationId"]/option[3]
${bill_form_pg_bill_created_message}                  Bill was successfully created. 
${bill_view_pg_label_on_page}                         List
*** keywords ***
 Create_new_pay_bill
    Page should contain                             ${bill_form_pg_lable_created_new}
    click Element                                    ${bill_pg_button_create_bill}
    click Element                                    ${bill_create_form_pg_field_status}             
    click Element                                    ${bill_create_form_pg_status_option}
    click Element                                    ${bill_create_form_pg_field_ Reservation}            
    click Element                                    ${bill_create_form_pg_ Reservation_option}
    click element                                    ${bill_create_form_pg_button_save} 
    Wait until page contains                         ${bill_form_pg_bill_created_message}    
    click element                                    ${bill_create_form_pg_button_show_bills}
    Wait until page contains                   	     ${bill_view_pg_label_on_page}
    Page should contain                              ${reservation_code} 
