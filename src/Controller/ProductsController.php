<?php

namespace App\Controller;

use App\Data\SearchProductData;
use App\Form\SearchProductType;
use App\Repository\ProductRepository;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;


class ProductsController extends AbstractController
{
    /**
     * @Route("/products", name="produits")
     */
    public function index(ProductRepository $productRepository, Request $request): Response
    {
        $search = new SearchProductData();
        $searchForm = $this->createForm(SearchProductType::class, $search);
        $searchForm->handleRequest($request);

        $results = [];
        $products = $productRepository->findAll();

        if ($searchForm->isSubmitted() && $searchForm->isValid()) {
            $results = $productRepository->searchProduct($search);
        }
  
        return $this->render('products/index.html.twig', [
            'products' => $results ? $results : $products,
            'searchForm' => $searchForm->createView()
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