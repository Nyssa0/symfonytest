<?php

namespace App\Controller\Admin;

use App\Entity\User;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;
use EasyCorp\Bundle\EasyAdminBundle\Field\ChoiceField;
use EasyCorp\Bundle\EasyAdminBundle\Field\IdField;
use EasyCorp\Bundle\EasyAdminBundle\Field\ImageField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextField;
use Symfony\Component\Form\Extension\Core\Type\PasswordType;

class UserCrudController extends AbstractCrudController
{
    public static function getEntityFqcn(): string
    {
        return User::class;
    }


    public function configureFields(string $pageName): iterable
    {
        return [
            IdField::new('id')->setDisabled()->hideOnIndex()->hideOnForm(),
            TextField::new('email'),
            TextField::new('password')
                ->setFormType(PasswordType::class)
                ->hideOnIndex()
                ->hideWhenUpdating(),
            ChoiceField::new('roles')
                ->allowMultipleChoices()
                ->setChoices([
                    'admin' => 'ROLE_ADMIN',
                    'user' => 'ROLE_USER'
                ]),
            ImageField::new('picture')
                ->setUploadDir('public/uploads/user/')
                ->setBasePath('uploads/user/')
                ->setUploadedFileNamePattern('[randomhash].[extension]')
                ->setFormTypeOptions([
                    'attr' => [
                        'accept' => 'image/*'
                    ]
                ]),
        ];
    }

}
