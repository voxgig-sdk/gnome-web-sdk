import { GnomeWebEntityBase } from '../GnomeWebEntityBase';
import type { GnomeWebSDK } from '../GnomeWebSDK';
import type { Control } from '../types';
import type { Language, LanguageListMatch } from '../GnomeWebTypes';
declare class LanguageEntity extends GnomeWebEntityBase<Language> {
    constructor(client: GnomeWebSDK, entopts: any);
    make(this: LanguageEntity): LanguageEntity;
    list(this: any, reqmatch?: LanguageListMatch, ctrl?: Control): Promise<LanguageEntity[]>;
}
export { LanguageEntity };
