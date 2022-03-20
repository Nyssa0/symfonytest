<?php

namespace App\DataFixtures;

use App\Entity\Category;
use App\Entity\Product;
use App\Entity\User;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;
use Symfony\Component\PasswordHasher\Hasher\UserPasswordHasherInterface;

class AppFixtures extends Fixture
{

    private UserPasswordHasherInterface $hasher;

    public function __construct(UserPasswordHasherInterface $hasher)
    {
        $this->hasher = $hasher;
    }

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
            $product->setPrice(rand(200, 100000) / 10);
            $product->setDescription('Description ' . $i);
            $product->setStock(rand(0, 10000));
            $product->setCategory($allCategories[$randKey]);
            $product->setImage('5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg');
            $manager->persist($product);
        }

        $manager->flush();

        for ($i=1; $i<=50; $i++){
            $user = new User();
            $user->setEmail('user' . $i . '@gmail.com');
            $password = $this->hasher->hashPassword($user, 'password');
            $user->setPassword($password);
            $user->setRoles([
               'ROLE_ADMIN',
                'ROLE_USER'
            ]);
            $manager->persist($user);
        }
        $manager->flush();

    }
}
