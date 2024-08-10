.class Lcom/android/billingclient/api/BillingClientImpl$16;
.super Ljava/lang/Object;
.source "BillingClientImpl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/billingclient/api/BillingClientImpl;->loadRewardedSku(Lcom/android/billingclient/api/RewardLoadParams;Lcom/android/billingclient/api/RewardResponseListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/billingclient/api/BillingClientImpl;

.field final synthetic val$listener:Lcom/android/billingclient/api/RewardResponseListener;

.field final synthetic val$params:Lcom/android/billingclient/api/RewardLoadParams;


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/RewardLoadParams;Lcom/android/billingclient/api/RewardResponseListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/billingclient/api/BillingClientImpl;

    .prologue
    .line 993
    iput-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl$16;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    iput-object p2, p0, Lcom/android/billingclient/api/BillingClientImpl$16;->val$params:Lcom/android/billingclient/api/RewardLoadParams;

    iput-object p3, p0, Lcom/android/billingclient/api/BillingClientImpl$16;->val$listener:Lcom/android/billingclient/api/RewardResponseListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 993
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl$16;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 996
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl$16;->val$params:Lcom/android/billingclient/api/RewardLoadParams;

    .line 998
    invoke-virtual {v0}, Lcom/android/billingclient/api/RewardLoadParams;->getSkuDetails()Lcom/android/billingclient/api/SkuDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/SkuDetails;->rewardToken()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl$16;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    .line 999
    invoke-static {v1}, Lcom/android/billingclient/api/BillingClientImpl;->access$800(Lcom/android/billingclient/api/BillingClientImpl;)I

    move-result v1

    iget-object v2, p0, Lcom/android/billingclient/api/BillingClientImpl$16;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    .line 1000
    invoke-static {v2}, Lcom/android/billingclient/api/BillingClientImpl;->access$900(Lcom/android/billingclient/api/BillingClientImpl;)I

    move-result v2

    iget-object v3, p0, Lcom/android/billingclient/api/BillingClientImpl$16;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    .line 1001
    invoke-static {v3}, Lcom/android/billingclient/api/BillingClientImpl;->access$1000(Lcom/android/billingclient/api/BillingClientImpl;)Ljava/lang/String;

    move-result-object v3

    .line 997
    invoke-static {v0, v1, v2, v3}, Lcom/android/billingclient/util/BillingHelper;->constructExtraParamsForLoadRewardedSku(Ljava/lang/String;IILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 1004
    .local v6, "extraParams":Landroid/os/Bundle;
    :try_start_0
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl$16;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    .line 1005
    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->access$300(Lcom/android/billingclient/api/BillingClientImpl;)Lcom/android/vending/billing/IInAppBillingService;

    move-result-object v0

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/android/billingclient/api/BillingClientImpl$16;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    .line 1007
    invoke-static {v2}, Lcom/android/billingclient/api/BillingClientImpl;->access$200(Lcom/android/billingclient/api/BillingClientImpl;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/billingclient/api/BillingClientImpl$16;->val$params:Lcom/android/billingclient/api/RewardLoadParams;

    .line 1008
    invoke-virtual {v3}, Lcom/android/billingclient/api/RewardLoadParams;->getSkuDetails()Lcom/android/billingclient/api/SkuDetails;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/billingclient/api/SkuDetails;->getSku()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/billingclient/api/BillingClientImpl$16;->val$params:Lcom/android/billingclient/api/RewardLoadParams;

    .line 1009
    invoke-virtual {v4}, Lcom/android/billingclient/api/RewardLoadParams;->getSkuDetails()Lcom/android/billingclient/api/SkuDetails;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/billingclient/api/SkuDetails;->getType()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 1005
    invoke-interface/range {v0 .. v6}, Lcom/android/vending/billing/IInAppBillingService;->getBuyIntentExtraParams(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 1024
    .local v8, "buyIntentBundle":Landroid/os/Bundle;
    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->newBuilder()Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object v0

    const-string v1, "BillingClient"

    .line 1026
    invoke-static {v8, v1}, Lcom/android/billingclient/util/BillingHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v1

    .line 1025
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingResult$Builder;->setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object v0

    const-string v1, "BillingClient"

    .line 1028
    invoke-static {v8, v1}, Lcom/android/billingclient/util/BillingHelper;->getDebugMessageFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1027
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingResult$Builder;->setDebugMessage(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object v0

    .line 1029
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    move-result-object v7

    .line 1031
    .local v7, "billingResult":Lcom/android/billingclient/api/BillingResult;
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl$16;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    new-instance v1, Lcom/android/billingclient/api/BillingClientImpl$16$2;

    invoke-direct {v1, p0, v7}, Lcom/android/billingclient/api/BillingClientImpl$16$2;-><init>(Lcom/android/billingclient/api/BillingClientImpl$16;Lcom/android/billingclient/api/BillingResult;)V

    invoke-static {v0, v1}, Lcom/android/billingclient/api/BillingClientImpl;->access$500(Lcom/android/billingclient/api/BillingClientImpl;Ljava/lang/Runnable;)V

    .line 1038
    .end local v7    # "billingResult":Lcom/android/billingclient/api/BillingResult;
    .end local v8    # "buyIntentBundle":Landroid/os/Bundle;
    :goto_0
    return-object v10

    .line 1012
    :catch_0
    move-exception v9

    .line 1013
    .local v9, "e":Ljava/lang/Exception;
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl$16;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    new-instance v1, Lcom/android/billingclient/api/BillingClientImpl$16$1;

    invoke-direct {v1, p0}, Lcom/android/billingclient/api/BillingClientImpl$16$1;-><init>(Lcom/android/billingclient/api/BillingClientImpl$16;)V

    invoke-static {v0, v1}, Lcom/android/billingclient/api/BillingClientImpl;->access$500(Lcom/android/billingclient/api/BillingClientImpl;Ljava/lang/Runnable;)V

    goto :goto_0
.end method
