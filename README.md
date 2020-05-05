[![codecov](https://codecov.io/gh/EurostarDigital/red_box/branch/master/graph/badge.svg?token=91Qp8Vr2NC)](https://codecov.io/gh/EurostarDigital/red_box)

# FE_TestFramework-Cucumber-in-Cypress

## Overview

This test service is used to help us migrate our microservices from SBE to S3.

It will complete the following tasks for us:

* Create proxy service between SBE and Eurostar microservices
* Repoint all microservices to this interface (instead of directly to SBE)
* Create second implementation of this interface which talks to S3 Passenger API
* Change configuration so API requests are routed to S3 Passenger API instead of SBE

A full suite of comparison tests will run on this façade service as part of continuous integration to compare SBE and Sqills S3 responses to confirm data integrity.

### Folder structure
> Please see the folder structure below.

```bash
├── AaaS_webDriverIO_1
├── lib
	├── /*.js
├── node_modules
├── test
	├── homepage.js
├── test-results
	├── report
		├── index.html
├── docker-compose.yml
├── Dockerfile
├── Makefile
├── package.json
├── README.md
└── wdio.conf.js (configuration setup)
```

## How to run this automation framework

### Installation 

Before installing the dependency you need to have node version >=10 install on your machine

run `$ npm install`

### Unit test

run `$ npm test`

run `npx cypress run --reporter mochawesome`


### Running using docker

Please ensure you have got docker installed on your machine

**Build docker image**

`$ docker build -t cypressproject .`

**Run the container**

`$ docker run cypressproject npx cypress run`



### Generate test report

```
$ chmod +x ./scripts/generate-report.sh
```
```
$ ./scripts/generate-report.sh 

```

Output logs from the container

```docker logs``` *[container ID]*

