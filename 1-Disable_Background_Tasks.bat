@echo off

REM Stop Fax
sc config fax start= disabled
REM Stop Fax If it is running
net stop fax

REM Stop SYSMain
sc config sysmain start= disabled
REM Stop SYSMain If it is running
net stop sysmain

REM Stop Windows Search
sc config wsearch start= disabled
REM Stop Windows Search If it is running
net stop wsearch

REM Stop Xbox Game Bar
sc config XboxGipSvc start= disabled
sc config XboxNetApiSvc start= disabled
sc config XblAuthManager start= disabled
sc config XblGameSave start= disabled
sc config XboxGipSvcNet start= disabled
sc config XblGameSaveTaskLogon start= disabled
REM Stop GameDVR
sc config XboxSvc start= disabled
sc config XboxLiveAuthManager start= disabled
sc config XboxLiveGameSave start= disabled
sc config XboxNetApiSvc start= disabled
sc config XboxUpdate start= disabled
REM Stop Xbox
sc config XboxAppServices start= disabled
REM Stop GameBarPresenceWriter
sc config GamingServices start= disabled
sc config GamingServicesNet start= disabled
sc config GamingServicesNetLogon start= disabled
net stop XboxGipSvc
net stop XboxNetApiSvc
net stop XblAuthManager
net stop XblGameSave
net stop XboxGipSvcNet
net stop XblGameSaveTaskLogon
net stop XboxSvc
net stop XboxLiveAuthManager
net stop XboxLiveGameSave
net stop XboxNetApiSvc
net stop XboxUpdate
net stop XboxAppServices
net stop GamingServices
net stop GamingServicesNet
net stop GamingServicesNetLogon
REM Stop Game Mode
sc config GameDVR_Service start= disabled
sc config GamingServices start= disabled
REM Stop Game Mode If it is running
net stop GameDVR_Service
net stop GamingServices

REM Stop Background Tasks Infrastructure Service If it is running
net stop BrokerInfrastructure
REM Stop State Repository Service If it is running
net stop StateRepository echo Y
REM Stop Background Tasks Infrastructure Service If it is running
net stop BackgroundTransferInfrastructure
REM Stop User Data Access_5cbdb own Microsoft Store
net stop UserDataSvc_5cbdb
