./mvnw package
Get-ChildItem target | ? {$_.Name -like "*.jar"} | % {cp $_ javahelloworld.jar}
Compress-Archive -Path javahelloworld.jar, Procfile -DestinationPath beanstalk-app-bundle.zip -Force