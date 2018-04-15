FROM microsoft/windowsservercore

COPY . .

RUN PowerShell -File Install.ps1

CMD [ "tabcmd", "version" ]
