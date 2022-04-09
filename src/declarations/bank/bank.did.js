export const idlFactory = ({ IDL }) => {
  return IDL.Service({
    'Withdraw' : IDL.Func([IDL.Float64], [], ['oneway']),
    'checkBalance' : IDL.Func([], [IDL.Float64], ['query']),
    'compound' : IDL.Func([], [], ['oneway']),
    'topUp' : IDL.Func([IDL.Float64], [], ['oneway']),
  });
};
export const init = ({ IDL }) => { return []; };
