<?php

namespace App\Controller;

use App\Entity\Product;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class SitemapController extends AbstractController
{
    /**
     * @Route("/sitemap.xml", name="sitemap", defaults={"_format"="xml"})
     */
    public function index(Request $request)
    {
        $hostname = $request->getSchemeAndHttpHost();

        $urls = [];

        $urls[] = ['loc' => $this->generateUrl('home')];
        $urls[] = ['loc' => $this->generateUrl('faq')];
        $urls[] = ['loc' => $this->generateUrl('legal_mentions')];
        $urls[] = ['loc' => $this->generateUrl('products')];

        foreach($this->getDoctrine()->getRepository(Product::class)->findAll() as $product){
            $urls[] = [
                'loc' => $this->generateUrl('product_show', [
                    'slug' => $product->getSlug(),
                ]),
            ];
        }

        $response = new Response(
        $this->renderView('sitemap/index.html.twig', [
            'urls' => $urls,
            'hostname' => $hostname,
        ]),
        200
        );

        $response->headers->set('Content-Type', 'text/xml');

        return $response;
    }
}
