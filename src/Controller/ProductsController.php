<?php

namespace App\Controller;

use App\Entity\Product;
use App\Data\SearchProductData;
use App\Form\SearchProductType;
use App\Repository\ProductRepository;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\ParamConverter;


class ProductsController extends AbstractController
{
    /**
     * @Route("/produits", name="products")
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
     * @Route("produits/{slug}", name="product_show")
     * @ParamConverter("product", class="App\Entity\Product", options={"mapping": {"product": "slug"}})
     */
    public function showProduct(Product $product): Response
    {
        return $this->render('products/show.html.twig', [
            'product' => $product,
        ]);

    }


}