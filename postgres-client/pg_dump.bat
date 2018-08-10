@echo off
docker run --rm --network=host -v "%cd%:/project" -it ungolianth/postgres-client pg_dump %*