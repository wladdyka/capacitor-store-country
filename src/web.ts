import { WebPlugin } from '@capacitor/core';

import type { CapacitorStoreCountryPlugin } from './definitions';

export class CapacitorStoreCountryWeb extends WebPlugin implements CapacitorStoreCountryPlugin {
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }
}
