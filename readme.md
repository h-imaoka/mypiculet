mypiculet (piculet in docker)
=====

# Depends on
- docker
- docker-compose
- (direnv)

# How?
1. edit `.envrc`
2. Try `docker-compose run --rm piculet`

# Ops
```
docker-compose run --rm -T piculet -e > Groupfile

docker-compose run --rm piculet -a --dry-run

Apply `Groupfile` to SecurityGroup (dry-run)
No change
```
## why `-T`
When `tty=ture`, dump `CRLF`

# Forgot `--rm` ...
`docker-compose down`
