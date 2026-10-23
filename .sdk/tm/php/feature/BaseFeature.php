<?php
declare(strict_types=1);

// GnomeWeb SDK base feature

class GnomeWebBaseFeature
{
    public string $version;
    public string $name;
    public bool $active;

    // Positions this feature when added via the client `extend` option:
    // "__before__" / "__after__" / "__replace__" name an already-added
    // feature (mirrors the ts feature `_options`). Declared so setting it
    // on an extension instance avoids the dynamic-property deprecation.
    public ?array $_options = null;

    public function __construct()
    {
        $this->version = '0.0.1';
        $this->name = 'base';
        $this->active = true;
    }

    public function get_version(): string { return $this->version; }
    public function get_name(): string { return $this->name; }
    public function get_active(): bool { return $this->active; }

    public function init(GnomeWebContext $ctx, array $options): void {}
    public function PostConstruct(GnomeWebContext $ctx): void {}
    public function PostConstructEntity(GnomeWebContext $ctx): void {}
    public function SetData(GnomeWebContext $ctx): void {}
    public function GetData(GnomeWebContext $ctx): void {}
    public function GetMatch(GnomeWebContext $ctx): void {}
    public function SetMatch(GnomeWebContext $ctx): void {}
    public function PrePoint(GnomeWebContext $ctx): void {}
    public function PreSpec(GnomeWebContext $ctx): void {}
    public function PreRequest(GnomeWebContext $ctx): void {}
    public function PreResponse(GnomeWebContext $ctx): void {}
    public function PreResult(GnomeWebContext $ctx): void {}
    public function PreDone(GnomeWebContext $ctx): void {}
    public function PreUnexpected(GnomeWebContext $ctx): void {}
}
