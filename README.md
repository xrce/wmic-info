> [!TIP]
You can contribute if you want, there's so many things we can do for make it more useful

#
<div align="center">

```

┏                                    
MY6U4-RD14N-4N63L-C4NTF-LY1NG
                                    ┛

```

</div>

## How it works

This program get windows installed key by this command:
```
C:\> wmic path softwareLicensingService get OA3xOriginalProductKey
```
But i just add a little bit of code that used for check if installed key are LIVE or DIE, LIVE meaning you can install the same exact key at different computer running same OS.

## Error code

There's some list of errorcode and it's description within status if key still alive or die

|errorcode |description                              |status |
|----------|-----------------------------------------|-------|
|0XC004C003|SL_E_CHPA_PRODUCT_KEY_BLOCKED            |DIE    |
|0XC004C060|SL_E_CHPA_DYNAMICALLY_BLOCKED_PRODUCT_KEY|DIE    |
|0XC004C020|SL_E_CHPA_DMAK_LIMIT_EXCEEDED            |DIE    |
|0XC004C008|SL_E_CHPA_MAXIMUM_UNLOCK_EXCEEDED        |LIVE   |
|0XC004C004|SL_E_CHPA_INVALID_PRODUCT_KEY            |INVALID|
|0XC004C00D|SL_E_CHPA_INVALID_ACTCONFIG_ID           |INVALID|
|0XC004F069|SL_E_MISMATCHED_PRODUCT_SKU              |INVALID|
|0XC004E016|SL_E_PKEY_INVALID_CONFIG                 |INVALID|
|0XC004F050|SL_E_INVALID_PRODUCT_KEY                 |INVALID|
|Online key|SL_E_PURE_UNTOUCHED_VIRGIN_KEY           |LIVE   |

## How to activate

- If you're just getting the "Online key" (which is impossible since you already use it), you can just activate it normally
- If you're not lucky enough you can still activate it by phone, you need to call Microsoft for this
