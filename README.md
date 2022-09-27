# Jira Software working on Apple chips

I found [this solution here, Thank you!](https://community.atlassian.com/t5/Jira-Software-articles/Atlassian-Jira-Docker-for-Apple-M1-processors/ba-p/2120698)

First we build the image in the project root folder:

```bash
docker build -t jira-software-arm64:9.2.0 .
```

Then...

```bash
docker-compose up
```

or you can run it standalone with:

```bash
docker run -p 8080:8080 -it jira-software-arm64:9.2.0
```

