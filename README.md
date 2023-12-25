# Terraform Module: ECS Task Status Alert

## Overview

This Terraform module sets up an alerting mechanism that notifies Slack when an ECS (Elastic Container Service) task changes status as requested.

## Features

- Monitors ECS tasks for state changes status as requested.
- Sends alerts to Slack channels for immediate notification.

# AWS resource

- aws cloudwatch event rule
- lambda function
- aws cloudwatch event target

### log configuration

- lambda function log group: /aws/lambda/${var.service_name}-notification
  EX: /aws/lambda/container-task-status-alert-dev-singapore-notification
