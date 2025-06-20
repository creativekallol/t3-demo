# TYPO3 Demo Project

This is a TYPO3 demo project showcasing a custom FAQ extension setup, ready for local development with [DDEV](https://ddev.readthedocs.io/).

## 🚀 Getting Started

Follow the steps below to clone and set up the project locally:

### Project Setup

    git clone -b main --single-branch https://github.com/creativekallol/t3-demo.git t3-demo
    cd t3-demo
    ddev start
    ddev composer install
    ddev import-db --file=.ddev/dump.sql
    ddev composer exec typo3 extension:setup
    ddev typo3 cache:flush -g system

## 🔍 Frontend Preview

### Visit the FAQ demo page:

👉 https://t3-demo.ddev.site/faq-demo

## 🔐 Backend Access

### Access the TYPO3 backend:
👉 https://t3-demo.ddev.site/typo3
* Username: t3-faq
* Password: t3FAQ25!

## 🛠 Tech Stack
* TYPO3 CMS 13.4
* DDEV for local environment
* Composer for dependency management
