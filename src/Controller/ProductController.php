<?php

namespace App\Controller;

use App\Repository\ProductRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class ProductController extends AbstractController
{
    #[Route('/product', name: 'app_product')]
    public function index(ProductRepository $productRepository): Response
    {
        $products = $productRepository->findAll();
        return $this->render('product/index.html.twig', [
            'products' => $products,
        ]);
    }

    #[Route('/productDESC', name: 'app_product_DESC')]
    public function productDesc(ProductRepository $productRepository): Response
    {
        $products = $productRepository->filterPricesDESC();
        return $this->render('product/index.html.twig', [
            'products' => $products,
        ]);
    }

    #[Route('/productASC', name: 'app_product_ASC')]
    public function productAsc(ProductRepository $productRepository): Response
    {
        $products = $productRepository->filterPricesASC();
        return $this->render('product/index.html.twig', [
            'products' => $products,
        ]);
    }

    #[Route('category/{id}', name: 'app_product_cat')]
    public function filterByCat(ProductRepository $productRepository, $id): Response
    {
        $products = $productRepository->filterCat($id);
        return $this->render('category/index.html.twig', [
            'products' => $products,
        ]);
    }
}