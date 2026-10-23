<?php
declare(strict_types=1);

// Typed models for the GnomeWeb SDK.
//
// GENERATED from the API model: main.kit.entity.<e>.fields{} and per-op
// params (op.<name>.points[].g.params[]). Field/param types come from the
// canonical type sentinels via @voxgig/sdkgen canonToType (source of truth:
// @voxgig/apidef VALID_CANON). Do not edit by hand.
//
// These are documentation-grade value objects (PHP 8 typed properties),
// registered on the composer classmap autoload. The SDK boundary exchanges
// assoc-arrays; these classes name the shapes for tooling and typed callers.

/** Language entity data model. */
class Language
{
    public array $id;
    public string $local_name;
}

/** Request payload for Language#list. */
class LanguageListMatch
{
    public ?array $id = null;
    public ?string $local_name = null;
}

