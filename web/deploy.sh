# /bin/bash
mvn clean package
/Library/GlassFish/bin/asadmin deploy --force=true target/web-comprar-passagem-aerea.war
