<?php

namespace App\Controller;

use App\Repository\StyleRepository;
use App\Entity\Style;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\ParamConverter;

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

    /**
     * @Route("/faq", name="faq")
     */
    public function faq()
    {
        return $this->render('default/faq.html.twig');
    }

    /**
     * @Route("/legalMentions", name="legal_mentions")
     */
    public function legalMentions()
    {
        return $this->render('default/legalmentions.html.twig');
    }

     /**
     * @Route("/{style}", name="style_show")
     * @ParamConverter("style", class="App\Entity\Style", options={"mapping": {"style": "slug"}})
     */
    public function showStyle(Style $style): Response
    {
        return $this->render('default/style_show.html.twig', [
            'style' => $style,
        ]);

    }
}
