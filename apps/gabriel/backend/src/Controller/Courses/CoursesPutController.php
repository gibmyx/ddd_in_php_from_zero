<?php


declare(strict_types=1);


namespace MN\Apps\Gabriel\Backend\Controller\Courses;


use MN\Gabriel\Courses\Application\CourseCreator;
use MN\Gabriel\Courses\Application\CreateCourseRequest;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;

final class CoursesPutController
{
    public function __construct(CourseCreator $creator)
    {
        $this->creator = $creator;
    }

    public function __invoke(string $id, Request $request): Response
    {
        $name       = $request->get('name');
        $duration   = $request->get('duration');

        $this->creator->__invoke(new CreateCourseRequest($id, $name, $duration));

        return new Response('', Response::HTTP_CREATED);
    }
}