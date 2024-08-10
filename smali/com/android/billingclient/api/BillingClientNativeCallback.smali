.class Lcom/android/billingclient/api/BillingClientNativeCallback;
.super Ljava/lang/Object;
.source "BillingClientNativeCallback.java"

# interfaces
.implements Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;
.implements Lcom/android/billingclient/api/BillingClientStateListener;
.implements Lcom/android/billingclient/api/ConsumeResponseListener;
.implements Lcom/android/billingclient/api/PriceChangeConfirmationListener;
.implements Lcom/android/billingclient/api/PurchaseHistoryResponseListener;
.implements Lcom/android/billingclient/api/PurchasesUpdatedListener;
.implements Lcom/android/billingclient/api/RewardResponseListener;
.implements Lcom/android/billingclient/api/SkuDetailsResponseListener;


# instance fields
.field private final futureHandle:J


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/billingclient/api/BillingClientNativeCallback;->futureHandle:J

    .line 28
    return-void
.end method

.method constructor <init>(J)V
    .locals 1
    .param p1, "futureHandle"    # J

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-wide p1, p0, Lcom/android/billingclient/api/BillingClientNativeCallback;->futureHandle:J

    .line 32
    return-void
.end method

.method public static native nativeOnAcknowledgePurchaseResponse(ILjava/lang/String;J)V
.end method

.method public static native nativeOnBillingServiceDisconnected()V
.end method

.method public static native nativeOnBillingSetupFinished(ILjava/lang/String;J)V
.end method

.method public static native nativeOnConsumePurchaseResponse(ILjava/lang/String;Ljava/lang/String;J)V
.end method

.method public static native nativeOnPriceChangeConfirmationResult(ILjava/lang/String;J)V
.end method

.method public static native nativeOnPurchaseHistoryResponse(ILjava/lang/String;[Lcom/android/billingclient/api/PurchaseHistoryRecord;J)V
.end method

.method public static native nativeOnPurchasesUpdated(ILjava/lang/String;[Lcom/android/billingclient/api/Purchase;)V
.end method

.method public static native nativeOnQueryPurchasesResponse(ILjava/lang/String;[Lcom/android/billingclient/api/Purchase;J)V
.end method

.method public static native nativeOnRewardResponse(ILjava/lang/String;J)V
.end method

.method public static native nativeOnSkuDetailsResponse(ILjava/lang/String;[Lcom/android/billingclient/api/SkuDetails;J)V
.end method


# virtual methods
.method public onAcknowledgePurchaseResponse(Lcom/android/billingclient/api/BillingResult;)V
    .locals 4
    .param p1, "billingResult"    # Lcom/android/billingclient/api/BillingResult;

    .prologue
    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/billingclient/api/BillingClientNativeCallback;->futureHandle:J

    .line 50
    invoke-static {v0, v1, v2, v3}, Lcom/android/billingclient/api/BillingClientNativeCallback;->nativeOnAcknowledgePurchaseResponse(ILjava/lang/String;J)V

    .line 52
    return-void
.end method

.method public onBillingServiceDisconnected()V
    .locals 0

    .prologue
    .line 62
    invoke-static {}, Lcom/android/billingclient/api/BillingClientNativeCallback;->nativeOnBillingServiceDisconnected()V

    .line 63
    return-void
.end method

.method public onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V
    .locals 4
    .param p1, "billingResult"    # Lcom/android/billingclient/api/BillingResult;

    .prologue
    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/billingclient/api/BillingClientNativeCallback;->futureHandle:J

    .line 56
    invoke-static {v0, v1, v2, v3}, Lcom/android/billingclient/api/BillingClientNativeCallback;->nativeOnBillingSetupFinished(ILjava/lang/String;J)V

    .line 58
    return-void
.end method

.method public onConsumeResponse(Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V
    .locals 4
    .param p1, "billingResult"    # Lcom/android/billingclient/api/BillingResult;
    .param p2, "purchaseToken"    # Ljava/lang/String;

    .prologue
    .line 67
    .line 68
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    .line 69
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/billingclient/api/BillingClientNativeCallback;->futureHandle:J

    .line 67
    invoke-static {v0, v1, p2, v2, v3}, Lcom/android/billingclient/api/BillingClientNativeCallback;->nativeOnConsumePurchaseResponse(ILjava/lang/String;Ljava/lang/String;J)V

    .line 72
    return-void
.end method

.method public onPriceChangeConfirmationResult(Lcom/android/billingclient/api/BillingResult;)V
    .locals 4
    .param p1, "billingResult"    # Lcom/android/billingclient/api/BillingResult;

    .prologue
    .line 76
    .line 77
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/billingclient/api/BillingClientNativeCallback;->futureHandle:J

    .line 76
    invoke-static {v0, v1, v2, v3}, Lcom/android/billingclient/api/BillingClientNativeCallback;->nativeOnPriceChangeConfirmationResult(ILjava/lang/String;J)V

    .line 78
    return-void
.end method

.method public onPurchaseHistoryResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 6
    .param p1, "billingResult"    # Lcom/android/billingclient/api/BillingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List",
            "<",
            "Lcom/android/billingclient/api/PurchaseHistoryRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p2, "purchaseHistoryRecordList":Ljava/util/List;, "Ljava/util/List<Lcom/android/billingclient/api/PurchaseHistoryRecord;>;"
    if-nez p2, :cond_0

    .line 85
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    .line 89
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/billingclient/api/PurchaseHistoryRecord;

    .line 88
    invoke-interface {p2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/billingclient/api/PurchaseHistoryRecord;

    .line 91
    .local v0, "purchaseHistoryArray":[Lcom/android/billingclient/api/PurchaseHistoryRecord;
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v1

    .line 92
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/billingclient/api/BillingClientNativeCallback;->futureHandle:J

    .line 90
    invoke-static {v1, v2, v0, v4, v5}, Lcom/android/billingclient/api/BillingClientNativeCallback;->nativeOnPurchaseHistoryResponse(ILjava/lang/String;[Lcom/android/billingclient/api/PurchaseHistoryRecord;J)V

    .line 95
    return-void
.end method

.method public onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 3
    .param p1, "billingResult"    # Lcom/android/billingclient/api/BillingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List",
            "<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p2, "purchases":Ljava/util/List;, "Ljava/util/List<Lcom/android/billingclient/api/Purchase;>;"
    if-nez p2, :cond_0

    .line 101
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    .line 103
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/billingclient/api/Purchase;

    invoke-interface {p2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/billingclient/api/Purchase;

    .line 105
    .local v0, "purchaseArray":[Lcom/android/billingclient/api/Purchase;
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object v2

    .line 104
    invoke-static {v1, v2, v0}, Lcom/android/billingclient/api/BillingClientNativeCallback;->nativeOnPurchasesUpdated(ILjava/lang/String;[Lcom/android/billingclient/api/Purchase;)V

    .line 106
    return-void
.end method

.method onQueryPurchasesResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 6
    .param p1, "billingResult"    # Lcom/android/billingclient/api/BillingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List",
            "<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 116
    .local p2, "purchases":Ljava/util/List;, "Ljava/util/List<Lcom/android/billingclient/api/Purchase;>;"
    if-nez p2, :cond_0

    .line 118
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    .line 120
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/billingclient/api/Purchase;

    invoke-interface {p2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/billingclient/api/Purchase;

    .line 122
    .local v0, "purchaseArray":[Lcom/android/billingclient/api/Purchase;
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v1

    .line 123
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/billingclient/api/BillingClientNativeCallback;->futureHandle:J

    .line 121
    invoke-static {v1, v2, v0, v4, v5}, Lcom/android/billingclient/api/BillingClientNativeCallback;->nativeOnQueryPurchasesResponse(ILjava/lang/String;[Lcom/android/billingclient/api/Purchase;J)V

    .line 126
    return-void
.end method

.method public onRewardResponse(Lcom/android/billingclient/api/BillingResult;)V
    .locals 4
    .param p1, "billingResult"    # Lcom/android/billingclient/api/BillingResult;

    .prologue
    .line 110
    .line 111
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/billingclient/api/BillingClientNativeCallback;->futureHandle:J

    .line 110
    invoke-static {v0, v1, v2, v3}, Lcom/android/billingclient/api/BillingClientNativeCallback;->nativeOnRewardResponse(ILjava/lang/String;J)V

    .line 112
    return-void
.end method

.method public onSkuDetailsResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 6
    .param p1, "billingResult"    # Lcom/android/billingclient/api/BillingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List",
            "<",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p2, "skuDetailsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/billingclient/api/SkuDetails;>;"
    if-nez p2, :cond_0

    .line 38
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    .line 40
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/billingclient/api/SkuDetails;

    invoke-interface {p2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/billingclient/api/SkuDetails;

    .line 42
    .local v0, "skuDetailsArray":[Lcom/android/billingclient/api/SkuDetails;
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v1

    .line 43
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/billingclient/api/BillingClientNativeCallback;->futureHandle:J

    .line 41
    invoke-static {v1, v2, v0, v4, v5}, Lcom/android/billingclient/api/BillingClientNativeCallback;->nativeOnSkuDetailsResponse(ILjava/lang/String;[Lcom/android/billingclient/api/SkuDetails;J)V

    .line 46
    return-void
.end method
