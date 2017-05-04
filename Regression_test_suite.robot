*** Settings ***
Library                                        Selenium2Library
Library                                        OperatingSystem
Library                                        String

Resource                                       ./pages-and-keywords/test_setup_and_teardown.robot
Resource                                       ./pages-and-keywords/login_page_and_keywords.robot  
Resource                                       ./pages-and-keywords/dashboard_page_and_keywords.robot
Resource                                       ./pages-and-keywords/client-pages/client_list_page_and_keywords.robot
Resource                                       ./pages-and-keywords/client-pages/client_form_page_and_keywords.robot
Resource                                       ./pages-and-keywords/bedroom-pages/bedroom_form_page_and_keywords.robot

Test Setup                                     Setup
Test Teardown                                  Teardown                     


*** Test Cases ***
Test_login_as_normal_user
    perform_login_normal_user
    perform_logout
    
Test_login_as_admin_userssss
    perform_login_admin_user
    perform_logout
    
Test_create_a_new_user_logging_in_as_normal_user
    perform_login_normal_user
    navigate_to_user_page_link_left
    create_a_new_user_logging_in_as_normal_user
    perform_logout
    


#Test_delete_a_new_client_logging_in_as_normal_user
   # perform_login_admin_user 
    #navigate_to_client_page_link_left
    #navigate_to_create_client_form
    #create_new_male_client    
    #Delete_an_existing_client  
    #perform_logout    

Test_navigate_through_the_pages
    perform_login_admin_user
    navigate_to_user_page_link_left
    navigate_to_reservation_page_link_left
    navigate_to_dasboard_page_link_left
    navigate_to_client_page_link_left
    navigate_to_bill_page_link_left
    navigate_to_bedroom_page_link_left
    navigate_to_dasboard_top_link    
    perform_logout
    
Test_create_a_new_client
    perform_login_admin_user
    navigate_to_client_page_link_left
    navigate_to_create_client_form
    create_new_male_client    
    perform_logout
    
Test_create_a_new_bedroom_logging_in_as_admin_user
    perform_login_admin_user
    navigate_to_bedroom_page_link_left
    navigate_to_create_bedroom_form
    create_new_bedroom
    perform_logout
          