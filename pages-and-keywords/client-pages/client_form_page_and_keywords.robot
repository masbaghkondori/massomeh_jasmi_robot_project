
*** variables ***
${client_form_pg_label_on_page}                         Create New Client
${client_form_pg_client_created_message}                Client was successfully created. 

${client_create_form_pg_button_save}                    xpath=//a[text()='Save']   
${client_create_form_pg_button_show_clients}            xpath=//a[text()='Show All Clients']  
${client_create_form_pg_button_index}                   xpath=//a[text()='Index']

${client_create_form_pg_textfield_name}                 id=name
${client_create_form_pg_textfield_email}                id=email
${client_create_form_pg_textfield_social_number}        name=socialSecurityNumber
${client_create_form_pg_radiobtn_masculine}             id=gender:0
${client_create_form_pg_radiobtn_feminine}              id=gender:1


*** keywords ***
create_new_male_client
    ${client_name} =                                    Generate Random String                                          10                  [LOWER]
    ${client_email} =                                   Catenate      SEPARATOR=                  ${client_name}        @email.com  
    ${client_security_number} =                         Generate Random String                                          7                   [NUMBERS]
    Set Suite Variable                                  ${client_name}                            ${client_name}       
	Set Suite Variable                                  ${client_email}                           ${client_email}
    Set Suite Variable                                  ${client_security_number}                 ${client_security_number}    
    ${log_message}       Catenate                       \nData used in the create client form:\n  ${client_name}  ${client_email}  ${client_security_number}   
    Log to Console    ${log_message}  
    
    Page should contain                                 ${client_form_pg_label_on_page}
    input text                                          ${client_create_form_pg_textfield_name}                ${client_name}
    input text                                          ${client_create_form_pg_textfield_email}               ${client_email}
    select checkbox                                     ${client_create_form_pg_radiobtn_masculine}
    input text                                          ${client_create_form_pg_textfield_social_number}       ${client_security_number}
    click element                                       ${client_create_form_pg_button_save}
    Wait until page contains                            ${client_form_pg_client_created_message}    
    click element                                       ${client_create_form_pg_button_show_clients}
    Wait until page contains                   	        ${client_list_pg_label_on_page}
    Page should contain                                 ${client_name}
      