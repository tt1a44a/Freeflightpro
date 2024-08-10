.class public final Lcom/android/billingclient/util/BillingHelper;
.super Ljava/lang/Object;
.source "BillingHelper.java"


# static fields
.field public static final DEBUG_MESSAGE:Ljava/lang/String; = "DEBUG_MESSAGE"

.field public static final EXTRA_PARAMS_DEVELOPER_PAYLOAD:Ljava/lang/String; = "developerPayload"

.field public static final EXTRA_PARAMS_ENABLE_PENDING_PURCHASES:Ljava/lang/String; = "enablePendingPurchases"

.field public static final EXTRA_PARAM_KEY_SKU_DETAILS_TOKEN:Ljava/lang/String; = "skuDetailsToken"

.field public static final EXTRA_PARAM_KEY_SUBS_PRICE_CHANGE:Ljava/lang/String; = "subs_price_change"

.field public static final INAPP_CONTINUATION_TOKEN:Ljava/lang/String; = "INAPP_CONTINUATION_TOKEN"

.field private static final INTERNAL_ERROR:Ljava/lang/String; = "An internal error occurred."

.field public static final LIBRARY_VERSION_KEY:Ljava/lang/String; = "playBillingLibraryVersion"

.field public static NUMBER_OF_CORES:I = 0x0

.field public static final RESPONSE_BUY_INTENT_KEY:Ljava/lang/String; = "BUY_INTENT"

.field public static final RESPONSE_CODE:Ljava/lang/String; = "RESPONSE_CODE"

.field public static final RESPONSE_GET_SKU_DETAILS_LIST:Ljava/lang/String; = "DETAILS_LIST"

.field public static final RESPONSE_INAPP_ITEM_LIST:Ljava/lang/String; = "INAPP_PURCHASE_ITEM_LIST"

.field private static final RESPONSE_INAPP_PURCHASE_DATA:Ljava/lang/String; = "INAPP_PURCHASE_DATA"

.field public static final RESPONSE_INAPP_PURCHASE_DATA_LIST:Ljava/lang/String; = "INAPP_PURCHASE_DATA_LIST"

.field private static final RESPONSE_INAPP_SIGNATURE:Ljava/lang/String; = "INAPP_DATA_SIGNATURE"

.field public static final RESPONSE_INAPP_SIGNATURE_LIST:Ljava/lang/String; = "INAPP_DATA_SIGNATURE_LIST"

.field public static final RESPONSE_SUBS_MANAGEMENT_INTENT_KEY:Ljava/lang/String; = "SUBS_MANAGEMENT_INTENT"

.field private static final TAG:Ljava/lang/String; = "BillingHelper"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/android/billingclient/util/BillingHelper;->NUMBER_OF_CORES:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static constructExtraParamsForAcknowledgePurchase(Lcom/android/billingclient/api/AcknowledgePurchaseParams;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .param p0, "acknowledgePurchaseParams"    # Lcom/android/billingclient/api/AcknowledgePurchaseParams;
    .param p1, "libraryVersion"    # Ljava/lang/String;

    .prologue
    .line 340
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 341
    .local v1, "extraParams":Landroid/os/Bundle;
    const-string/jumbo v2, "playBillingLibraryVersion"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    invoke-virtual {p0}, Lcom/android/billingclient/api/AcknowledgePurchaseParams;->getDeveloperPayload()Ljava/lang/String;

    move-result-object v0

    .line 343
    .local v0, "developerPayload":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 344
    const-string v2, "developerPayload"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    :cond_0
    return-object v1
.end method

.method public static constructExtraParamsForConsume(Lcom/android/billingclient/api/ConsumeParams;ZLjava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .param p0, "consumeParams"    # Lcom/android/billingclient/api/ConsumeParams;
    .param p1, "isIabV9Supported"    # Z
    .param p2, "libraryVersion"    # Ljava/lang/String;

    .prologue
    .line 319
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 320
    .local v1, "extraParams":Landroid/os/Bundle;
    if-eqz p1, :cond_0

    .line 321
    const-string/jumbo v2, "playBillingLibraryVersion"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    :cond_0
    invoke-virtual {p0}, Lcom/android/billingclient/api/ConsumeParams;->getDeveloperPayload()Ljava/lang/String;

    move-result-object v0

    .line 324
    .local v0, "developerPayload":Ljava/lang/String;
    if-eqz p1, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 325
    const-string v2, "developerPayload"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    :cond_1
    return-object v1
.end method

.method public static constructExtraParamsForGetSkuDetails(ZZLjava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .param p0, "isIabV9Supported"    # Z
    .param p1, "enablePendingPurchases"    # Z
    .param p2, "libraryVersion"    # Ljava/lang/String;

    .prologue
    .line 298
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 299
    .local v0, "extraParams":Landroid/os/Bundle;
    if-eqz p0, :cond_0

    .line 300
    const-string/jumbo v1, "playBillingLibraryVersion"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    :cond_0
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 303
    const-string v1, "enablePendingPurchases"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 305
    :cond_1
    return-object v0
.end method

.method public static constructExtraParamsForLaunchBillingFlow(Lcom/android/billingclient/api/BillingFlowParams;ZZLjava/lang/String;)Landroid/os/Bundle;
    .locals 7
    .param p0, "params"    # Lcom/android/billingclient/api/BillingFlowParams;
    .param p1, "isIabV9Supported"    # Z
    .param p2, "enablePendingPurchases"    # Z
    .param p3, "libraryVersion"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 217
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 218
    .local v0, "extraParams":Landroid/os/Bundle;
    const-string/jumbo v1, "playBillingLibraryVersion"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingFlowParams;->getReplaceSkusProrationMode()I

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    const-string/jumbo v1, "prorationMode"

    .line 224
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingFlowParams;->getReplaceSkusProrationMode()I

    move-result v2

    .line 222
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 226
    :cond_0
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingFlowParams;->getAccountId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 227
    const-string v1, "accountId"

    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingFlowParams;->getAccountId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    :cond_1
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingFlowParams;->getVrPurchaseFlow()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 230
    const-string/jumbo v1, "vr"

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 232
    :cond_2
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingFlowParams;->getOldSku()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 233
    const-string/jumbo v1, "skusToReplace"

    new-instance v2, Ljava/util/ArrayList;

    new-array v3, v6, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 235
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingFlowParams;->getOldSku()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 233
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 237
    :cond_3
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingFlowParams;->getDeveloperId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 238
    const-string v1, "developerId"

    .line 239
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingFlowParams;->getDeveloperId()Ljava/lang/String;

    move-result-object v2

    .line 238
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    :cond_4
    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    .line 243
    const-string v1, "enablePendingPurchases"

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 245
    :cond_5
    return-object v0
.end method

.method public static constructExtraParamsForLoadRewardedSku(Ljava/lang/String;IILjava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .param p0, "rewardToken"    # Ljava/lang/String;
    .param p1, "childDirected"    # I
    .param p2, "underAgeOfConsent"    # I
    .param p3, "libraryVersion"    # Ljava/lang/String;

    .prologue
    .line 275
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 276
    .local v0, "extraParams":Landroid/os/Bundle;
    const-string/jumbo v1, "rewardToken"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const-string/jumbo v1, "playBillingLibraryVersion"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    if-eqz p1, :cond_0

    .line 279
    const-string v1, "childDirected"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 281
    :cond_0
    if-eqz p2, :cond_1

    .line 282
    const-string/jumbo v1, "underAgeOfConsent"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 284
    :cond_1
    return-object v0
.end method

.method public static constructExtraParamsForQueryPurchases(ZZLjava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .param p0, "isIabV9Supported"    # Z
    .param p1, "enablePendingPurchases"    # Z
    .param p2, "libraryVersion"    # Ljava/lang/String;

    .prologue
    .line 260
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 261
    .local v0, "extraParams":Landroid/os/Bundle;
    const-string/jumbo v1, "playBillingLibraryVersion"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 263
    const-string v1, "enablePendingPurchases"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 265
    :cond_0
    return-object v0
.end method

.method private static extractPurchase(Ljava/lang/String;Ljava/lang/String;)Lcom/android/billingclient/api/Purchase;
    .locals 6
    .param p0, "purchaseData"    # Ljava/lang/String;
    .param p1, "signatureData"    # Ljava/lang/String;

    .prologue
    .line 351
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 352
    :cond_0
    const-string v3, "BillingHelper"

    const-string v4, "Received a bad purchase data."

    invoke-static {v3, v4}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    const/4 v1, 0x0

    .line 363
    :goto_0
    return-object v1

    .line 356
    :cond_1
    const/4 v1, 0x0

    .line 358
    .local v1, "purchase":Lcom/android/billingclient/api/Purchase;
    :try_start_0
    new-instance v2, Lcom/android/billingclient/api/Purchase;

    invoke-direct {v2, p0, p1}, Lcom/android/billingclient/api/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "purchase":Lcom/android/billingclient/api/Purchase;
    .local v2, "purchase":Lcom/android/billingclient/api/Purchase;
    move-object v1, v2

    .line 361
    .end local v2    # "purchase":Lcom/android/billingclient/api/Purchase;
    .restart local v1    # "purchase":Lcom/android/billingclient/api/Purchase;
    goto :goto_0

    .line 359
    :catch_0
    move-exception v0

    .line 360
    .local v0, "e":Lorg/json/JSONException;
    const-string v3, "BillingHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got JSONException while parsing purchase data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static extractPurchases(Landroid/os/Bundle;)Ljava/util/List;
    .locals 10
    .param p0, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 167
    if-nez p0, :cond_1

    move-object v5, v7

    .line 200
    :cond_0
    :goto_0
    return-object v5

    .line 171
    :cond_1
    const-string v8, "INAPP_PURCHASE_DATA_LIST"

    invoke-virtual {p0, v8}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 172
    .local v4, "purchaseDataList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v8, "INAPP_DATA_SIGNATURE_LIST"

    invoke-virtual {p0, v8}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 174
    .local v1, "dataSignatureList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 177
    .local v5, "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/android/billingclient/api/Purchase;>;"
    if-eqz v4, :cond_2

    if-nez v1, :cond_4

    .line 178
    :cond_2
    const-string v8, "BillingHelper"

    const-string v9, "Couldn\'t find purchase lists, trying to find single data."

    invoke-static {v8, v9}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const-string v8, "INAPP_PURCHASE_DATA"

    invoke-virtual {p0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 181
    .local v3, "purchaseData":Ljava/lang/String;
    const-string v8, "INAPP_DATA_SIGNATURE"

    invoke-virtual {p0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, "dataSignature":Ljava/lang/String;
    invoke-static {v3, v0}, Lcom/android/billingclient/util/BillingHelper;->extractPurchase(Ljava/lang/String;Ljava/lang/String;)Lcom/android/billingclient/api/Purchase;

    move-result-object v6

    .line 185
    .local v6, "tmpPurchase":Lcom/android/billingclient/api/Purchase;
    if-nez v6, :cond_3

    .line 186
    const-string v8, "BillingHelper"

    const-string v9, "Couldn\'t find single purchase data as well."

    invoke-static {v8, v9}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v7

    .line 187
    goto :goto_0

    .line 189
    :cond_3
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 192
    .end local v0    # "dataSignature":Ljava/lang/String;
    .end local v3    # "purchaseData":Ljava/lang/String;
    .end local v6    # "tmpPurchase":Lcom/android/billingclient/api/Purchase;
    :cond_4
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_0

    .line 193
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/android/billingclient/util/BillingHelper;->extractPurchase(Ljava/lang/String;Ljava/lang/String;)Lcom/android/billingclient/api/Purchase;

    move-result-object v6

    .line 195
    .restart local v6    # "tmpPurchase":Lcom/android/billingclient/api/Purchase;
    if-eqz v6, :cond_5

    .line 196
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static getBillingResultFromIntent(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult;
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 100
    if-nez p0, :cond_0

    .line 101
    const-string v0, "BillingHelper"

    const-string v1, "Got null intent!"

    invoke-static {v0, v1}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->newBuilder()Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object v0

    const/4 v1, 0x6

    .line 103
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingResult$Builder;->setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object v0

    const-string v1, "An internal error occurred."

    .line 104
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingResult$Builder;->setDebugMessage(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object v0

    .line 105
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    .line 107
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->newBuilder()Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object v0

    .line 108
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/billingclient/util/BillingHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingResult$Builder;->setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object v0

    .line 109
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/billingclient/util/BillingHelper;->getDebugMessageFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingResult$Builder;->setDebugMessage(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    goto :goto_0
.end method

.method public static getDebugMessageFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 139
    const-string v1, ""

    .line 141
    .local v1, "emptyString":Ljava/lang/String;
    if-nez p0, :cond_0

    .line 142
    const-string v2, "Unexpected null bundle received!"

    invoke-static {p1, v2}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .end local v1    # "emptyString":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 146
    .restart local v1    # "emptyString":Ljava/lang/String;
    :cond_0
    const-string v2, "DEBUG_MESSAGE"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 147
    .local v0, "debugMessage":Ljava/lang/Object;
    if-nez v0, :cond_1

    .line 148
    const-string v2, "getDebugMessageFromBundle() got null response code, assuming OK"

    invoke-static {p1, v2}, Lcom/android/billingclient/util/BillingHelper;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 150
    :cond_1
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 152
    check-cast v0, Ljava/lang/String;

    .end local v0    # "debugMessage":Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0

    .line 154
    .restart local v0    # "debugMessage":Ljava/lang/Object;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected type for debug message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getResponseCodeFromBundle(Landroid/os/Bundle;Ljava/lang/String;)I
    .locals 4
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x6

    .line 118
    if-nez p0, :cond_0

    .line 119
    const-string v2, "Unexpected null bundle received!"

    invoke-static {p1, v2}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :goto_0
    return v1

    .line 123
    :cond_0
    const-string v2, "RESPONSE_CODE"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 124
    .local v0, "responseCode":Ljava/lang/Object;
    if-nez v0, :cond_1

    .line 125
    const-string v1, "getResponseCodeFromBundle() got null response code, assuming OK"

    invoke-static {p1, v1}, Lcom/android/billingclient/util/BillingHelper;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const/4 v1, 0x0

    goto :goto_0

    .line 127
    :cond_1
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_2

    .line 129
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "responseCode":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 131
    .restart local v0    # "responseCode":Ljava/lang/Object;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected type for bundle response code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 132
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 131
    invoke-static {p1, v2}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getResponseCodeFromIntent(Landroid/content/Intent;Ljava/lang/String;)I
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 95
    invoke-static {p0, p1}, Lcom/android/billingclient/util/BillingHelper;->getBillingResultFromIntent(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    return v0
.end method

.method public static logVerbose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 75
    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_0
    return-void
.end method

.method public static logWarn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 87
    const/4 v0, 0x5

    invoke-static {p0, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_0
    return-void
.end method
