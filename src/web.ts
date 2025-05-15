import { WebPlugin } from '@capacitor/core';

import type { CapacitorStoreCountryPlugin } from './definitions';

export class CapacitorStoreCountryWeb extends WebPlugin implements CapacitorStoreCountryPlugin {
  async getAppStoreCountry(): Promise<{ value: string }> {
    return { value: 'NIL' };
  }
}
