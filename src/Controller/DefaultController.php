<?php

namespace App\Controller;

use App\Repository\StyleRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class DefaultController extends AbstractController
{
    /**
     * @Route("/", name="home")
     */
    public function index(StyleRepository $styleRepository): Response
    {
        $styles = $styleRepository->findAll();
        return $this->render('default/index.html.twig', [
            'styles' => $styles,
        ]);
    }
}
