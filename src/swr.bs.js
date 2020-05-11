// Generated by BUCKLESCRIPT, PLEASE EDIT WITH CARE

import * as Swr from "swr";
import * as Curry from "bs-platform/lib/es6/curry.js";

function wrap_raw_response_intf(param) {
  var mutate = param.mutate;
  var wrapped_mutate = function (data, shouldRevalidate, param) {
    return Curry._2(mutate, data, shouldRevalidate);
  };
  return {
          data: param.data,
          error: param.error,
          revalidate: param.revalidate,
          mutate: wrapped_mutate,
          isValidating: param.isValidating
        };
}

function useSWR(x, f) {
  return wrap_raw_response_intf(Swr.default([x], f));
}

var Raw = /* alias */0;

export {
  Raw ,
  wrap_raw_response_intf ,
  useSWR ,
  
}
/* swr Not a pure module */
