import { registerPlugin } from '@capacitor/core';

import type { CapacitorStoreCountryPlugin } from './definitions';

const CapacitorStoreCountry = registerPlugin<CapacitorStoreCountryPlugin>('CapacitorStoreCountry', {
  web: () => import('./web').then((m) => new m.CapacitorStoreCountryWeb()),
});

export * from './definitions';
export { CapacitorStoreCountry };
