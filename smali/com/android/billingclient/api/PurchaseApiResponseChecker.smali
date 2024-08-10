.class final Lcom/android/billingclient/api/PurchaseApiResponseChecker;
.super Ljava/lang/Object;
.source "PurchaseApiResponseChecker.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkPurchasesBundleValidity(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult;
    .locals 11
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "logTag"    # Ljava/lang/String;
    .param p2, "methodName"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 26
    sget-object v2, Lcom/android/billingclient/api/BillingResults;->INTERNAL_ERROR:Lcom/android/billingclient/api/BillingResult;

    .line 28
    .local v2, "internalErrorResult":Lcom/android/billingclient/api/BillingResult;
    if-nez p0, :cond_0

    .line 29
    const-string v7, "%s got null owned items list"

    new-array v8, v10, [Ljava/lang/Object;

    aput-object p2, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v7}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .end local v2    # "internalErrorResult":Lcom/android/billingclient/api/BillingResult;
    :goto_0
    return-object v2

    .line 33
    .restart local v2    # "internalErrorResult":Lcom/android/billingclient/api/BillingResult;
    :cond_0
    invoke-static {p0, p1}, Lcom/android/billingclient/util/BillingHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v5

    .line 34
    .local v5, "responseCode":I
    invoke-static {p0, p1}, Lcom/android/billingclient/util/BillingHelper;->getDebugMessageFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 36
    .local v1, "debugMessage":Ljava/lang/String;
    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->newBuilder()Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object v7

    .line 37
    invoke-virtual {v7, v5}, Lcom/android/billingclient/api/BillingResult$Builder;->setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object v7

    .line 38
    invoke-virtual {v7, v1}, Lcom/android/billingclient/api/BillingResult$Builder;->setDebugMessage(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object v7

    .line 39
    invoke-virtual {v7}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    .line 41
    .local v0, "billingResult":Lcom/android/billingclient/api/BillingResult;
    if-eqz v5, :cond_1

    .line 42
    const-string v7, "%s failed. Response code: %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p2, v8, v9

    .line 43
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 42
    invoke-static {p1, v7}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v0

    .line 44
    goto :goto_0

    .line 47
    :cond_1
    const-string v7, "INAPP_PURCHASE_ITEM_LIST"

    invoke-virtual {p0, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "INAPP_PURCHASE_DATA_LIST"

    .line 48
    invoke-virtual {p0, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "INAPP_DATA_SIGNATURE_LIST"

    .line 49
    invoke-virtual {p0, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 50
    :cond_2
    const-string v7, "Bundle returned from %s doesn\'t contain required fields."

    new-array v8, v10, [Ljava/lang/Object;

    aput-object p2, v8, v9

    .line 52
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 50
    invoke-static {p1, v7}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :cond_3
    const-string v7, "INAPP_PURCHASE_ITEM_LIST"

    invoke-virtual {p0, v7}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 57
    .local v3, "ownedSkus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v7, "INAPP_PURCHASE_DATA_LIST"

    .line 58
    invoke-virtual {p0, v7}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 59
    .local v4, "purchaseDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v7, "INAPP_DATA_SIGNATURE_LIST"

    .line 60
    invoke-virtual {p0, v7}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 62
    .local v6, "signatureList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v3, :cond_4

    .line 63
    const-string v7, "Bundle returned from %s contains null SKUs list."

    new-array v8, v10, [Ljava/lang/Object;

    aput-object p2, v8, v9

    .line 64
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 63
    invoke-static {p1, v7}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 68
    :cond_4
    if-nez v4, :cond_5

    .line 69
    const-string v7, "Bundle returned from %s contains null purchases list."

    new-array v8, v10, [Ljava/lang/Object;

    aput-object p2, v8, v9

    .line 71
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 69
    invoke-static {p1, v7}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 75
    :cond_5
    if-nez v6, :cond_6

    .line 76
    const-string v7, "Bundle returned from %s contains null signatures list."

    new-array v8, v10, [Ljava/lang/Object;

    aput-object p2, v8, v9

    .line 78
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 76
    invoke-static {p1, v7}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 82
    :cond_6
    sget-object v2, Lcom/android/billingclient/api/BillingResults;->OK:Lcom/android/billingclient/api/BillingResult;

    goto/16 :goto_0
.end method
