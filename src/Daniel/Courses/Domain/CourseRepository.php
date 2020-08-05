<?php


declare(strict_types=1);


namespace MN\Daniel\Courses\Domain;


interface CourseRepository
{
    public function save(Course $course): void;

    public function search(string $id): ?Course;
}