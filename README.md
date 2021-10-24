# Alpine-Jenkins



# Usando  Jenkins-CLI


## Sem Autenticar :

```
docker run -it --rm \
  -e "JENKINS_URL=http://jenkinsurl:8080" \
  chickenzord/jenkins-cli help
```

Com chave RSA:

```
docker run -it --rm \
  -v $HOME/.ssh:/ssh \
  -e "JENKINS_URL=http://jenkinsurl:8080" \
  chickenzord/jenkins-cli help
```

Altere `help` com seu comando. 
 - Documentação : [Jenkins CLI wiki page](https://wiki.jenkins-ci.org/display/JENKINS/Jenkins+CLI) .


## Configuração

- `JENKINS_URL`: **Obrigatório**
- `PRIVATE_KEY`: *opcional* (Padrão: `/ssh/id_rsa`)
