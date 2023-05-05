# syntax=docker/dockerfile:1
FROM python:3.9-bullseye

WORKDIR /app
RUN pip install rpi-hardware-pwm
COPY . .
CMD ["python","-u","fan_hardware_pwm.py","--verbose"]
