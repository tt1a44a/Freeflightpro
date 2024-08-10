.class Lcom/parrot/freeflight/purchase/util/BillingManager$6;
.super Ljava/lang/Object;
.source "BillingManager.java"

# interfaces
.implements Lcom/android/billingclient/api/ConsumeResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/purchase/util/BillingManager;->consumePurchase(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/purchase/util/BillingManager;

.field final synthetic val$sku:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/purchase/util/BillingManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/purchase/util/BillingManager;

    .prologue
    .line 316
    iput-object p1, p0, Lcom/parrot/freeflight/purchase/util/BillingManager$6;->this$0:Lcom/parrot/freeflight/purchase/util/BillingManager;

    iput-object p2, p0, Lcom/parrot/freeflight/purchase/util/BillingManager$6;->val$sku:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsumeResponse(Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V
    .locals 3
    .param p1, "billingResult"    # Lcom/android/billingclient/api/BillingResult;
    .param p2, "purchaseToken"    # Ljava/lang/String;

    .prologue
    .line 319
    const-string v0, "FF4.Purchase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Purchase "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/purchase/util/BillingManager$6;->val$sku:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " consumed with result : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/parrot/freeflight/purchase/util/BillingManager$6;->this$0:Lcom/parrot/freeflight/purchase/util/BillingManager;

    invoke-static {v0}, Lcom/parrot/freeflight/purchase/util/BillingManager;->access$600(Lcom/parrot/freeflight/purchase/util/BillingManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/purchase/util/BillingManager$6;->val$sku:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    :cond_0
    return-void
.end method
