# TYPO3 Demo Project

This is a TYPO3 demo project ready for local development with [DDEV](https://ddev.readthedocs.io/).

## 🚀 Getting Started

Follow the steps below to clone and set up the project locally:

### Project Setup

    git clone -b main --single-branch https://github.com/creativekallol/t3-demo.git t3-demo
    cd t3-demo
    ddev start
    ddev composer install
    ddev import-db --file=db.sql
    ddev composer exec typo3 extension:setup
    ddev typo3 cache:flush -g system

## 🔍 Access the TYPO3 Frontend

👉 https://t3-demo.ddev.site/

### Access the TYPO3 Backend

👉 https://t3-demo.ddev.site/typo3
* Username: t3demo
* Password: t3Demo!23

## 🛠 Tech Stack
* TYPO3 CMS 13.4
* DDEV for local environment
* Composer for dependency management
