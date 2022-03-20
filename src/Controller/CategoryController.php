<?php

namespace App\Controller;

use App\Entity\Category;
use App\Repository\CategoryRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class CategoryController extends AbstractController
{

    #[Route('/category', name: 'app_category')]
    public function index(CategoryRepository $categoryRepository): Response
    {
        $category = $categoryRepository
            ->findAll();
        return $this->render('category/category.html.twig', [
            'category' => $category,
        ]);
    }

    /*#[Route('/category/{id}', name: 'app_category')]
    #[Route('/category', name: 'app_category')]
    public function index(int $id, CategoryRepository $categoryRepository): Response
    {
        $category = $categoryRepository
            ->find($id);
        return $this->render('category/category.html.twig', [
            'category' => $category,
        ]);
    }*/


}
