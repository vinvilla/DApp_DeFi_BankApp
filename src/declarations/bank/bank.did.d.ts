import type { Principal } from '@dfinity/principal';
export interface _SERVICE {
  'Withdraw' : (arg_0: number) => Promise<undefined>,
  'checkBalance' : () => Promise<number>,
  'compound' : () => Promise<undefined>,
  'topUp' : (arg_0: number) => Promise<undefined>,
}
