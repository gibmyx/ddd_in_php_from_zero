<?php


declare(strict_types=1);


namespace MN\Shared\Domain\Bus\Event\DomainEvent;


use MN\Shared\Domain\Bus\Event\DomainEvent;

abstract class AggregateRoot
{
    private $domainEvents = [];

    final public function pullDomainEvents(): array
    {
        $domainEvents = $this->domainEvents;
        $this->domainEvents = [];

        return $domainEvents;
    }

    final protected function record(DomainEvent $domainEvent): void
    {
        $this->domainEvents[] = $domainEvent;
    }
}