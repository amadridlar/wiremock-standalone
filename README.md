# WireMock-standalone

## Descarga de wiremock-standalone.jar
http://repo1.maven.org/maven2/com/github/tomakehurst/wiremock-standalone/

### Iniciar servicio wiremock
```shell
java -jar wiremock-standalone-version.jar 
```
Por defecto se levanta en el puerto 8080. Si queremos indicarle el puerto en el que se inicie.
```shell
java -jar wiremock-standalone-version.jar --port 8081
```
Ver comandos que se pueden utilizar en el inicio
```
java -jar wiremock-standalone-version.jar -help
```

### Configurar peticiones
/mappings -> archivos de configuración de peticiones

/__files -> archivos de configuración de respuestas

#### Ejemplo de configuración
#### /mappings/routeJSON.json

```json
{
	"request":{
		"method":"GET",
		"url":"/routejson"
	},
	"response":{
		"status":200,
		"bodyFileName":"routeResponse.json"
	}
}
```
#### /__files/routeResponse.json
```json
{
	"name":"Johny",
	"lastName":"Reland",
	"favourites":{
		"beer":"Jacobsen",
		"whiskey":"JohnCor"
	}
}
```
