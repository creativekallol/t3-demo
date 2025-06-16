<?php

use TYPO3\CMS\Extbase\Utility\ExtensionUtility;

defined('TYPO3') or die();

// Register Plugin
$contentTypeName = ExtensionUtility::registerPlugin(
    'CkFaq',
    'Pi1',
    'LLL:EXT:ck_faq/Resources/Private/Language/locallang_db.xlf:tx_ckfaq_pi1.name',
    'tx-ckfaq-svgicon',
    'default',
    'LLL:EXT:ck_faq/Resources/Private/Language/locallang_db.xlf:tx_ckfaq_pi1.description',
);
