.class Lcom/parrot/freeflight/purchase/util/BillingManager$7;
.super Ljava/lang/Object;
.source "BillingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/purchase/util/BillingManager;->initiatePurchaseFlow(Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/purchase/util/BillingManager;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$skuId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/purchase/util/BillingManager;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/purchase/util/BillingManager;

    .prologue
    .line 332
    iput-object p1, p0, Lcom/parrot/freeflight/purchase/util/BillingManager$7;->this$0:Lcom/parrot/freeflight/purchase/util/BillingManager;

    iput-object p2, p0, Lcom/parrot/freeflight/purchase/util/BillingManager$7;->val$skuId:Ljava/lang/String;

    iput-object p3, p0, Lcom/parrot/freeflight/purchase/util/BillingManager$7;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 335
    const-string v1, "FF4.Purchase"

    const-string v2, "Launching in-app purchase flow."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object v1, p0, Lcom/parrot/freeflight/purchase/util/BillingManager$7;->this$0:Lcom/parrot/freeflight/purchase/util/BillingManager;

    invoke-static {v1}, Lcom/parrot/freeflight/purchase/util/BillingManager;->access$700(Lcom/parrot/freeflight/purchase/util/BillingManager;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/purchase/util/BillingManager$7;->val$skuId:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 337
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object v2

    iget-object v1, p0, Lcom/parrot/freeflight/purchase/util/BillingManager$7;->this$0:Lcom/parrot/freeflight/purchase/util/BillingManager;

    .line 338
    invoke-static {v1}, Lcom/parrot/freeflight/purchase/util/BillingManager;->access$700(Lcom/parrot/freeflight/purchase/util/BillingManager;)Ljava/util/Map;

    move-result-object v1

    iget-object v3, p0, Lcom/parrot/freeflight/purchase/util/BillingManager$7;->val$skuId:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/billingclient/api/SkuDetails;

    invoke-virtual {v2, v1}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setSkuDetails(Lcom/android/billingclient/api/SkuDetails;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams;

    move-result-object v0

    .line 339
    .local v0, "purchaseParams":Lcom/android/billingclient/api/BillingFlowParams;
    iget-object v1, p0, Lcom/parrot/freeflight/purchase/util/BillingManager$7;->this$0:Lcom/parrot/freeflight/purchase/util/BillingManager;

    invoke-static {v1}, Lcom/parrot/freeflight/purchase/util/BillingManager;->access$400(Lcom/parrot/freeflight/purchase/util/BillingManager;)Lcom/android/billingclient/api/BillingClient;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/purchase/util/BillingManager$7;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1, v2, v0}, Lcom/android/billingclient/api/BillingClient;->launchBillingFlow(Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;)Lcom/android/billingclient/api/BillingResult;

    .line 341
    .end local v0    # "purchaseParams":Lcom/android/billingclient/api/BillingFlowParams;
    :cond_0
    return-void
.end method
