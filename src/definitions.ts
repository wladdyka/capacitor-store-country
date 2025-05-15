export interface CapacitorStoreCountryPlugin {
  getAppStoreCountry(): Promise<{ country: string }>;
}
