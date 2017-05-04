*** variables ***
${bedroom_form_pg_label_on_page}                        Create New Bedroom
${bedroom_form_pg_label_on_pageShow}                    List

${bedroomom_form_pg_bedroom_created_message}            Bedroom was successfully created.

${bedroom_create_form_pg_button_save}                   xpath=//*[@id="j_idt50"]/a[1]   
${bedroom_create_form_pg_button_show_bedroom}           xpath=//a[text()='Show All Bedrooms']
${bedroom_create_form_pg_button_index}                  xpath=//*[@id="j_idt50"]/a[3]

${bedroom_create_form_pg_textfield_description}         id=description
${bedroom_create_form_pg_textfield_floor}               id=floor
${bedroom_create_form_pg_textfield_number}              id=number
${bedroom_create_form_pg_textfield_priceDaily}          id=priceDaily
${bedroom_create_form_pg_bedroom_status_dropdn}         id=bedroomStatusId
${bedroom_create_form_pg_bedroom_status_dropdn_vacant}  xpath=//*[@id="bedroomStatusId"]/option[2]
${bedroom_create_form_pg_bedroom_bedroomType_dropdn}    id=typeBedroomId
${bedroom_create_form_pg_bedroom_bedRoomType_dropdn_king}  xpath= //*[@id="typeBedroomId"]/option[2]
${bedroom_description}                                  20kvm with river view 

#xpath=//*[@id="j_idt50"]/a[2]


*** keywords ***
create_new_bedroom
    #${bedroom_description}=                                                                                              
    ${bedroom_floor} =                                  Generate Random String                                                     1                  [NUMBERS]
    ${bedroom_number} =                                 Generate Random String                                                     1                  [NUMBERS]
    ${bedroom_priceDaily} =                             Generate Random String                                                     5                  [NUMBERS]
   # Set Suite Variable                                  ${bedroom_create_form_pg_textfield_description}    ${bedroom_description}   20kvm with river view     
	Set Suite Variable                                  ${bedroom_floor}                                   ${bedroom_floor}
    Set Suite Variable                                  ${bedroom_number}                                  ${bedroom_number} 
    Set Suite Variable                                  ${bedroom_priceDaily}                              ${bedroom_priceDaily}
    ${log_message}       Catenate                       \nData used in the create bedroom form:\n         ${bedroom_floor}  ${bedroom_number} ${bedroom_priceDaily}    
    Log to Console    ${log_message}  
    
    Page should contain                                 ${bedroom_form_pg_label_on_page} 
    input text                                          ${bedroom_create_form_pg_textfield_description}                         20kvm with river view       
    input text                                          ${bedroom_create_form_pg_textfield_floor}             ${bedroom_floor}
    input text                                          ${bedroom_create_form_pg_textfield_number}            ${bedroom_number}
    input text                                          ${bedroom_create_form_pg_textfield_priceDaily}        ${bedroom_priceDaily}
    click element                                       ${bedroom_create_form_pg_bedroom_status_dropdn}
    click element                                       ${bedroom_create_form_pg_bedroom_status_dropdn_vacant}
    click element                                       ${bedroom_create_form_pg_bedroom_bedRoomType_dropdn_king}
    click element                                       ${bedroom_create_form_pg_button_save}
    Wait until page contains                            ${bedroomom_form_pg_bedroom_created_message} 
    click element                                       ${bedroom_create_form_pg_button_show_bedroom}
    Wait until page contains                            ${bedroom_form_pg_label_on_pageShow} 
    Page should contain                                 ${bedroom_description}  