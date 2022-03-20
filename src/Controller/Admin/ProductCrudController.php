<?php

namespace App\Controller\Admin;

use App\Entity\Product;
use EasyCorp\Bundle\EasyAdminBundle\Config\Filters;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;
use EasyCorp\Bundle\EasyAdminBundle\Field\AssociationField;
use EasyCorp\Bundle\EasyAdminBundle\Field\DateTimeField;
use EasyCorp\Bundle\EasyAdminBundle\Field\IdField;
use EasyCorp\Bundle\EasyAdminBundle\Field\ImageField;
use EasyCorp\Bundle\EasyAdminBundle\Field\NumberField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextField;

class ProductCrudController extends AbstractCrudController
{
    public static function getEntityFqcn(): string
    {
        return Product::class;
    }


    public function configureFields(string $pageName): iterable
    {
        return [
            IdField::new('id')->setDisabled()->hideOnIndex()->hideOnForm(),
            TextField::new('name'),
            NumberField::new('price')
                ->setFormTypeOptions([
                "attr" => ["min" => 0],
            ])
                ->setHelp('Minimum = 0'),
            ImageField::new('image')
                ->setUploadDir('public/uploads/product/')
                ->setBasePath('uploads/product/')
                ->setUploadedFileNamePattern('[randomhash].[extension]')
                ->setFormTypeOptions([
                    'attr' => [
                        'accept' => 'image/*',

                    ]
                ]),
            TextField::new('description'),
            AssociationField::new('category')

        ];
    }

    public function configureFilters(Filters $filters): Filters
    {
        return $filters
            ->add('price')
            ->add('category');

    }

}
