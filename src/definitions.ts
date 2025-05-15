export interface CapacitorStoreCountryPlugin {
  getAppStoreCountry(): Promise<{ value: string }>;
}
