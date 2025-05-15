export interface CapacitorStoreCountryPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
}
