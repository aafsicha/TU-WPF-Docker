FROM mcr.microsoft.com/dotnet/framework/sdk:4.8 AS build
WORKDIR /app
COPY TestApp .
RUN dotnet restore
RUN msbuild /t:Build /p:Configuration=Release TestApp.sln

#FROM build as test
#WORKDIR /app/packages/NUnit.ConsoleRunner.3.10.0/tools
#RUN ./nunit3-console.exe ../../../TestApp.Tests\bin\Release\TestApp.Tests.dll