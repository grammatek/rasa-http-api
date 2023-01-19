#! /bin/bash
java -jar openapi-generator-cli.jar generate -i ./openapi/rasa.yml  -g ruby \
--additional-properties gemAuthor='Daniel Schnell',gemAuthorEmail=dschnell@grammatek.com,gemDescription='This is a Ruby Gem for Rasa HTTP API',gemHomepage=https://github.com/grammatek/rasa-http-api,gemLicense=MIT,gemName=rasa-http-api,\
gemSummary='A Ruby wrapper for the Rasa HTTP REST API',gemVersion=0.1,moduleName=Rasa::HTTP --skip-validate-spec --schema-mappings array=Array -o .
