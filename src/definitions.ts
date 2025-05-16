export interface RedemptionKitIonicHelperPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
}
