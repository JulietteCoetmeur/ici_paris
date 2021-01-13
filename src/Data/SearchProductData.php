<?php

namespace App\Data;

use App\Entity\Product;
use App\Entity\Category;
use App\Entity\Style;
use App\Entity\Gender;

class SearchProductData
{
    /**
     * @var string
     */
    public $q = '';

    /**
     * @var Category[]
     */
    public $category = [];

    /**
     * @var Style[]
     */
    public $style = [];

    /**
     * @var Gender[]
     */
    public $gender = [];
}
