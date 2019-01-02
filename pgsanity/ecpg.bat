@echo off

docker run --rm -v "%cd%:/project" ungolianth/ecpg %*
