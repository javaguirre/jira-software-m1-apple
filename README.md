# Jira Software working on Apple chips (Development purposes only!)

I found [this solution here, Thank you!](https://community.atlassian.com/t5/Jira-Software-articles/Atlassian-Jira-Docker-for-Apple-M1-processors/ba-p/2120698)

## IMPORTANT!

You should (at least) change the Postgres password before running it [here](https://github.com/javaguirre/jira-software-m1-apple/blob/main/docker-compose.yml#L30).

First we build the image in the project root folder:

The default version is 8.22.0, you can change it through the `VERSION ARG`

```bash
export VERSION=9.2.0
docker build -t jira-software-arm64:$VERSION .
```

Then...

```bash
docker-compose up
```

or you can run it standalone with:

```bash
export VERSION=9.2.0
docker run -p 8080:8080 -it jira-software-arm64:$VERSION
```
