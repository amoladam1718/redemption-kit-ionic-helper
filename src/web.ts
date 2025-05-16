import { WebPlugin } from '@capacitor/core';

import type { RedemptionKitIonicHelperPlugin } from './definitions';

export class RedemptionKitIonicHelperWeb extends WebPlugin implements RedemptionKitIonicHelperPlugin {
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }
}
