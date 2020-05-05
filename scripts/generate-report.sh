#/bin/#!/usr/bin/env bash
npx mochawesome-merge "cypress/report/mochawesome-report/*.json" > mochawesome.json
npx marge mochawesome.json
open mochawesome-report/mochawesome.html
