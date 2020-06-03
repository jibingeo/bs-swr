type t = {
  errorRetryInterval: int option;
  errorRetryCount: int option;
  loadingTimeout: int option;
  focusThrottleInterval: int option;
  dedupingInterval: int option;
  refreshInterval: int option;
  refreshWhenHidden: bool option;
  refreshWhenOffline: bool option;
  revalidateOnFocus: bool option;
  revalidateOnReconnect: bool option;
  shouldRetryOnError: bool option;
  suspense: bool option;
}

let make ?(suspense = false) ?(revalidateOnFocus = true)
    ?(revalidateOnReconnect = true) ?(refreshInterval = 0)
    ?(refreshWhenHidden = false) ?(refreshWhenOffline = false)
    ?(shouldRetryOnError = true) ?(dedupingInterval = 2000)
    ?(focusThrottleInterval = 5000) ?(loadingTimeout = 3000)
    ?(errorRetryInterval = 5000) ?errorRetryCount () =
  {
    errorRetryInterval = Some errorRetryInterval;
    errorRetryCount;
    loadingTimeout = Some loadingTimeout;
    focusThrottleInterval = Some focusThrottleInterval;
    dedupingInterval = Some dedupingInterval;
    refreshInterval = Some refreshInterval;
    refreshWhenHidden = Some refreshWhenHidden;
    refreshWhenOffline = Some refreshWhenOffline;
    revalidateOnFocus = Some revalidateOnFocus;
    revalidateOnReconnect = Some revalidateOnReconnect;
    shouldRetryOnError = Some shouldRetryOnError;
    suspense = Some suspense;
  }

let default = make ()