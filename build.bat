@echo off
docker buildx build --platform=linux/riscv64 docker -t polyhobbyist/ros:humble
