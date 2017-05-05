

*** Settings ***
Resource                                       bill_form_page_and_keywords.robot


*** Variables **
${bill_pg_label_on_page}                       List 
${bill_pg_reservation_code}                    xpath=//*[@id="j_idt49"]/table/tbody/tr[1]/td[3]
${reservation_code}                            5
${bill_list_pg_button_delete}                  xpath=//td[text()=${reservation_code}]/following-sibling::td/a[text()='Delete']
${bill_pg_status_option}                       OPEN 
${bill_pg_reservation_field}                   xpath=//*[@id="j_idt50:hotelReservationId"]
${bill_form_pg_bill_created_message}           Bill was successfully created.           
${bill_form_pg_lable_created_new}              Create New Bill



*** keywords ***

Delete_an_existing_bill 
     
  Page should contain element                   ${bill_list_pg_button_delete} 
  Click element                                 ${bill_list_pg_button_delete}
  Wait Until Page Does Not Contain Element      ${reservation_code}  

    
  
  
 navigate_to_list_bills
    click element
    Page should contain element                  ${bill_pg_label_on_page}
    Wait until page contains                     ${bill_form_pg_bill_created_message}    
    click element                                ${bill_create_form_pg_button_show_bills}
    Wait until page contains                     ${bill_list_pg_label_on_page}
    Page should contain                   	     ${bill_Reservation} 

  
  



    
    


                                      


