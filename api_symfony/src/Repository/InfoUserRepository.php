<?php

namespace App\Repository;

use App\Entity\InfoUser;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Symfony\Bridge\Doctrine\RegistryInterface;

/**
 * @method InfoUser|null find($id, $lockMode = null, $lockVersion = null)
 * @method InfoUser|null findOneBy(array $criteria, array $orderBy = null)
 * @method InfoUser[]    findAll()
 * @method InfoUser[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class InfoUserRepository extends ServiceEntityRepository
{
    public function __construct(RegistryInterface $registry)
    {
        parent::__construct($registry, InfoUser::class);
    }

    // /**
    //  * @return InfoUser[] Returns an array of InfoUser objects
    //  */
    /*
    public function findByExampleField($value)
    {
        return $this->createQueryBuilder('i')
            ->andWhere('i.exampleField = :val')
            ->setParameter('val', $value)
            ->orderBy('i.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */

    /*
    public function findOneBySomeField($value): ?InfoUser
    {
        return $this->createQueryBuilder('i')
            ->andWhere('i.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
}
