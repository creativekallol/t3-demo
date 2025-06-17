<?php

declare(strict_types=1);

namespace Creativekallol\CkFaq\Controller;

/* * *************************************************************
 *
 *  Copyright notice
 *
 *  All rights reserved
 *
 *  This script is part of the TYPO3 project. The TYPO3 project is
 *  free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation; either version 3 of the License, or
 *  (at your option) any later version.
 *
 *  The GNU General Public License can be found at
 *  http://www.gnu.org/copyleft/gpl.html.
 *
 *  This script is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  This copyright notice MUST APPEAR in all copies of the script!
 * ************************************************************* */

use Creativekallol\CkFaq\Service\CategoryService;
use Creativekallol\CkFaq\Service\FaqService;
use Psr\Http\Message\ResponseInterface;
use TYPO3\CMS\Extbase\Mvc\Controller\ActionController;

/**
 * @author (c) 2025 Kallol Chakraborty <kallolchakraborty@learntube.de>
 */
class FaqController extends ActionController
{
    protected CategoryService $categoryService;

    protected FaqService $faqService;

    public function __construct(CategoryService $categoryService, FaqService $faqService)
    {
        $this->categoryService = $categoryService;
        $this->faqService = $faqService;
    }

    public function listAction(): ResponseInterface
    {
        $categoryParent = (int)($this->settings['categoryParent'] ?? 0);
        $demand = ['category' => '', 'term' => ''];

        if ($this->request->hasArgument('category')) {
            $demand['category'] = (int)($this->request->getArgument('category') ?? 0);
        }

        if ($this->request->hasArgument('term')) {
            $demand['term'] = trim((string)($this->request->getArgument('term') ?? ''));
        }

        $this->view->assignMultiple([
            'categories' => $this->categoryService->getCategories($categoryParent),
            'faqs' => $this->faqService->getFaqByDemand($demand),
            'demand' => $demand,
        ]);

        return $this->htmlResponse();
    }
}
