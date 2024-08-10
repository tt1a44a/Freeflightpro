.class Lcom/parrot/freeflight/purchase/util/BillingManager$4;
.super Ljava/lang/Object;
.source "BillingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/purchase/util/BillingManager;->queryPurchases()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/purchase/util/BillingManager;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/purchase/util/BillingManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/purchase/util/BillingManager;

    .prologue
    .line 260
    iput-object p1, p0, Lcom/parrot/freeflight/purchase/util/BillingManager$4;->this$0:Lcom/parrot/freeflight/purchase/util/BillingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 263
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 264
    .local v2, "time":J
    iget-object v1, p0, Lcom/parrot/freeflight/purchase/util/BillingManager$4;->this$0:Lcom/parrot/freeflight/purchase/util/BillingManager;

    invoke-static {v1}, Lcom/parrot/freeflight/purchase/util/BillingManager;->access$400(Lcom/parrot/freeflight/purchase/util/BillingManager;)Lcom/android/billingclient/api/BillingClient;

    move-result-object v1

    const-string v4, "inapp"

    invoke-virtual {v1, v4}, Lcom/android/billingclient/api/BillingClient;->queryPurchases(Ljava/lang/String;)Lcom/android/billingclient/api/Purchase$PurchasesResult;

    move-result-object v0

    .line 265
    .local v0, "purchasesResult":Lcom/android/billingclient/api/Purchase$PurchasesResult;
    const-string v1, "FF4.Purchase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Querying purchases elapsed time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase$PurchasesResult;->getResponseCode()I

    move-result v1

    if-eqz v1, :cond_0

    .line 267
    const-string v1, "FF4.Purchase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "queryPurchases() got an error response code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase$PurchasesResult;->getResponseCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/purchase/util/BillingManager$4;->this$0:Lcom/parrot/freeflight/purchase/util/BillingManager;

    invoke-static {v1, v0}, Lcom/parrot/freeflight/purchase/util/BillingManager;->access$500(Lcom/parrot/freeflight/purchase/util/BillingManager;Lcom/android/billingclient/api/Purchase$PurchasesResult;)V

    .line 270
    return-void
.end method
