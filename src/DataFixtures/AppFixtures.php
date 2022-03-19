<?php

namespace App\DataFixtures;

use App\Entity\Category;
use App\Entity\Product;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;

class AppFixtures extends Fixture
{
    public function load(ObjectManager $manager): void
    {
        $categories = ['Mac', 'iPad', 'iPhone', 'Watch', 'AirPods', 'TV', 'HomePod', 'Accessories', 'AirTag', 'Polishing Cloth'];

        foreach ($categories as $category) {
            $categoryEntity = new Category();
            $categoryEntity->setName($category);

            $manager->persist($categoryEntity);

        }

        $manager->flush();

        $categoryRepo = $manager->getRepository(Category::class);
        $allCategories = $categoryRepo->findAll();


        for ($i = 1; $i <= 200; $i++){
            $randKey = rand(0, count($allCategories)-1);
            $product = new Product();
            $product->setName('Product ' . $i);
            $product->setPrice(rand(20, 10000));
            $product->setDescription('Description ' . $i);
            $product->setStock(rand(0, 10000));
            $product->setCategory($allCategories[$randKey]);
            $manager->persist($product);
        }

        $manager->flush();
    }
}
