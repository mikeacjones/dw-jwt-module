# DataWeave JWT Module

This module provides DataWeave functions for creating signed JWT using RSA or HMAC-SHA. Currently supports RSA256/384/512 and HMAC-SHA 256/384/512.

Example usage:

```dataweave
output application/java
import jwt::RSA
---
{
	token: RSA::JWT(
		{
			iss: p('google.clientEmail'),
			aud: 'https://oauth2.googleapis.com/token',
			scope: 'https://www.googleapis.com/auth/drive.readonly',
			iat: now() as Number { unit: 'seconds' },
			exp: (now() + |PT3600S|) as Number { unit: 'seconds' }
		},
		p('google.privateKey')
	),
	expiration: now() + |PT3550S|
}
```


Note: The Nexus and extra plugins repositories are required to build this module.

Example maven settings.xml:

```xml
<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<settings>
  <servers>
    <server>
      <id>MuleRepository</id>
      <username></username>
      <password></password>
    </server>
    <server>
      <id>exchange-repository</id>
      <username></username>
      <password></password>
    </server>
    <server>
      <id>anypoint-exchange-v2</id>
      <username></username>
      <password></password>
    </server>
  </servers>
  <pluginGroups>
    <pluginGroup>org.mule.tools</pluginGroup>
  </pluginGroups>
  <profiles>
    <profile>
      <id>mule-extra-repos</id>
      <activation>
        <activeByDefault>true</activeByDefault>
      </activation>
      <repositories>
        <repository>
          <id>mule-public</id>
          <url>https://repository.mulesoft.org/nexus/content/repositories/public</url>
        </repository>
      </repositories>
      <pluginRepositories>
        <pluginRepository>
          <id>mule-public</id>
          <url>https://repository.mulesoft.org/nexus/content/repositories/public</url>
        </pluginRepository>
      </pluginRepositories>
    </profile>
    <profile>
      <id>Mule</id>
      <activation>
        <activeByDefault>true</activeByDefault>
      </activation>
      <repositories>
        <repository>
          <id>MuleRepository</id>
          <name>MuleRepository</name>
          <url>https://repository.mulesoft.org/nexus-ee/content/repositories/releases-ee/</url>
          <layout>default</layout>
          <releases>
            <enabled>true</enabled>
          </releases>
          <snapshots>
            <enabled>true</enabled>
          </snapshots>
        </repository>
      </repositories>
    </profile>
  </profiles>
</settings>
```
