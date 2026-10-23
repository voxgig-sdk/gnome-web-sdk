import { LanguageEntity } from './entity/LanguageEntity';
export type * from './GnomeWebTypes';
import { inspect } from 'node:util';
import type { Context, Feature } from './types';
import { config } from './Config';
import { GnomeWebEntityBase } from './GnomeWebEntityBase';
import { Utility } from './utility/Utility';
import { BaseFeature } from './feature/base/BaseFeature';
declare const stdutil: Utility;
type DirectResult = {
    ok: false;
    err: any;
    status?: undefined;
    headers?: undefined;
    data?: undefined;
} | {
    ok: boolean;
    status: number;
    headers: any;
    data: any;
    err?: any;
};
declare class GnomeWebSDK {
    _mode: string;
    _options: any;
    _utility: Utility;
    _features: Feature[];
    _rootctx: Context;
    constructor(options?: any);
    options(): any;
    utility(): any;
    prepare(fetchargs?: any): Promise<any>;
    direct(fetchargs?: any): Promise<DirectResult>;
    _rawRequest(fetchargs?: any): Promise<DirectResult>;
    graphql(query: string, variables?: any, ctrl?: any): Promise<any>;
    Language(entopts?: Record<string, any>): LanguageEntity;
    static test(testoptsarg?: any, sdkoptsarg?: any): GnomeWebSDK;
    tester(testopts?: any, sdkopts?: any): GnomeWebSDK;
    toJSON(): {
        name: string;
    };
    toString(): string;
    [inspect.custom](): string;
}
declare const SDK: typeof GnomeWebSDK;
export { stdutil, config, BaseFeature, GnomeWebEntityBase, GnomeWebSDK, SDK, };
export type { DirectResult };
