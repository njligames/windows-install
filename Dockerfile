# Container image that runs your code
FROM mcr.microsoft.com/windows/servercore:ltsc2019

# # Copies your code file from your action repository to the filesystem path `/` of the container
# COPY entrypoint.bat /entrypoint.bat
# 
# # Code file to execute when the docker container starts up (`entrypoint.sh`)
# ENTRYPOINT ["/entrypoint.bat"]

# FROM mcr.microsoft.com/windows/servercore:ltsc2019
# RUN echo "Hello $1"
# RUN time=$(date)
# RUN echo "::set-output name=time::$time"

RUN @echo on
RUN 
RUN echo "Installing $1 with choco"
RUN 
RUN @powershell -NoProfile -ExecutionPolicy Bypass -Command "[System.Net.WebRequest]::DefaultWebProxy.Credentials = [System.Net.CredentialCache]::DefaultCredentials; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin
RUN choco install -y $1
RUN refreshenv

RUN time=$(date)
RUN echo "::set-output name=time:$time"

