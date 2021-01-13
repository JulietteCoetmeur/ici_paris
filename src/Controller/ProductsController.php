<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;


class ProductsController extends AbstractController
{
    /**
     * @Route("/products", name="produits")
     */
    public function index(): Response
    {
        return $this->render('products/index.html.twig', [
            'controller_name' => 'ProductsController',
        ]);
    }

    /**
     * @Route("/{product}", name="product_show")
     */
    public function showProduct(): Response
    {
        return $this->render('products/show.html.twig', [
            'controller_name' => 'ProductsController',
        ]);

    }


}
