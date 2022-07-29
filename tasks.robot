*** Settings ***
Documentation       SAP Logon & Login
Library    RPA.Desktop.Windows
Library    SapGuiLibrary    
Library    Process
#Library    RPA.Robocloud.Secrets    
#Library    RPA.Robocorp.Vault    

*** Variables ***
${sapLogonPath}    C:\\Program Files (x86)\\SAP\\FrontEnd\\SAPgui\\saplogon.exe
${user}    %{USERNAME}
${pass}    %{PASSWORD}
${conn}    %{CONNECTION}


*** Tasks ***
SAP Connect
    Open Executable    ${sapLogonPath}    SAP Logon 730
    Connect To Session    
    Open Connection    ${conn}
    Input Text    wnd[0]/usr/txtRSYST-BNAME    ${user}
    Input Password    wnd[0]/usr/pwdRSYST-BCODE    ${pass}
    Send Vkey    0
    
 
 

