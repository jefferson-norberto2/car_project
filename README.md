# Instalar o compilador do proto
Para compilar e os pacotes protobuf para usar dentro do projeto seu computador, deverá ter instalado o protoc:

- Só baixar a versão para WINDOWS do .zip do compilador no github (https://github.com/protocolbuffers/protobuf/releases/tag/v24.1)
- Colocar no disco local c, dentro da pasta src a pasta descompactada
- Adicionar ao path do sistema a pasta bin
    
## Para compilar o protobuf na linguagem python você precisa:
1. Instalar o betterProto via pip:
```
pip install "betterproto[compiler]"
```
2. No Terminal, navegar até o diretório /proto
3. Executar o script:
```
compilePython.bat
```

## Para compilar o protobuf na linguagem dart você precisa:

1. No terminal rodar o comando: dart pub global activate protoc_plugin

2. Copie o caminho mostrado no terminal que não está no seu path e adicione ao path do sistema

2. Abre a pasta onde estão os arquivos .proto no terminal usando o comando cd
    - exemplo: cd .\lib\src\modules\dispense\infra\comm_packages\proto\

3. Executa o comando: protoc --dart_out=.\pb\ *.proto

4. Adicione o protoc_plugin no seu pubspec (dependencias)

