<?php
declare(strict_types=1);

// GnomeWeb SDK utility: make_context

require_once __DIR__ . '/../core/Context.php';

class GnomeWebMakeContext
{
    public static function call(array $ctxmap, ?GnomeWebContext $basectx): GnomeWebContext
    {
        return new GnomeWebContext($ctxmap, $basectx);
    }
}
