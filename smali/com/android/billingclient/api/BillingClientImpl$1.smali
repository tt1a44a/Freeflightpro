.class Lcom/android/billingclient/api/BillingClientImpl$1;
.super Landroid/os/ResultReceiver;
.source "BillingClientImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/billingclient/api/BillingClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/billingclient/api/BillingClientImpl;


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/BillingClientImpl;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/billingclient/api/BillingClientImpl;
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl$1;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onReceiveResult(ILandroid/os/Bundle;)V
    .locals 5
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .prologue
    .line 173
    iget-object v3, p0, Lcom/android/billingclient/api/BillingClientImpl$1;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-static {v3}, Lcom/android/billingclient/api/BillingClientImpl;->access$000(Lcom/android/billingclient/api/BillingClientImpl;)Lcom/android/billingclient/api/BillingBroadcastManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/billingclient/api/BillingBroadcastManager;->getListener()Lcom/android/billingclient/api/PurchasesUpdatedListener;

    move-result-object v2

    .line 174
    .local v2, "purchasesUpdatedListener":Lcom/android/billingclient/api/PurchasesUpdatedListener;
    if-nez v2, :cond_0

    .line 175
    const-string v3, "BillingClient"

    const-string v4, "PurchasesUpdatedListener is null - no way to return the response."

    invoke-static {v3, v4}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    :goto_0
    return-void

    .line 179
    :cond_0
    invoke-static {p2}, Lcom/android/billingclient/util/BillingHelper;->extractPurchases(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v1

    .line 181
    .local v1, "purchases":Ljava/util/List;, "Ljava/util/List<Lcom/android/billingclient/api/Purchase;>;"
    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->newBuilder()Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object v3

    .line 182
    invoke-virtual {v3, p1}, Lcom/android/billingclient/api/BillingResult$Builder;->setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object v3

    const-string v4, "BillingClient"

    .line 183
    invoke-static {p2, v4}, Lcom/android/billingclient/util/BillingHelper;->getDebugMessageFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/billingclient/api/BillingResult$Builder;->setDebugMessage(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object v3

    .line 184
    invoke-virtual {v3}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    .line 185
    .local v0, "billingResult":Lcom/android/billingclient/api/BillingResult;
    invoke-interface {v2, v0, v1}, Lcom/android/billingclient/api/PurchasesUpdatedListener;->onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    goto :goto_0
.end method
