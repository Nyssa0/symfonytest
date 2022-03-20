<?php

namespace App\Controller;

use App\Entity\Category;
use App\Repository\CategoryRepository;
use App\Repository\ProductRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class AppController extends AbstractController
{
    #[Route('/', name: 'app_index')]
    public function index(CategoryRepository $categoryRepository): Response
    {
        $categories = $categoryRepository->findAll();

        return $this->render('app/index.html.twig', [
            'categories' => $categories,
        ]);
    }

    public function header(CategoryRepository $categoryRepository):Response{
        $categories = $categoryRepository->findAll();
        return $this->render('partial/header.html.twig', [
            'categories' => $categories,
        ]);
    }


}
