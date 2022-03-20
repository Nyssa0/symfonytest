<?php

namespace App\Controller;

use App\Entity\Category;
use App\Repository\CategoryRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class CategoryController extends AbstractController
{
    #[Route('/{id}', name: 'app_category')]
    public function index(int $id, CategoryRepository $categoryRepository): Response
    {
        $category = $categoryRepository
            ->find($id);
        return $this->render('category/index.html.twig', [
            'category' => $category,
        ]);
    }
}

/*#[Route('/{id}', name: 'app_category')]
    public function category(CategoryRepository $categoryRepository, Category $category): Response
    {
        $id = $category->getId();
        $categories = $categoryRepository->find($id);

        return $this->render('category_product/category_product.html.twig', [
            'categories' => $categories,
        ]);
    }*/