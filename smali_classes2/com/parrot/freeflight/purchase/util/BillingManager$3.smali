.class Lcom/parrot/freeflight/purchase/util/BillingManager$3;
.super Ljava/lang/Object;
.source "BillingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/purchase/util/BillingManager;->querySkuDetails()V
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
    .line 243
    iput-object p1, p0, Lcom/parrot/freeflight/purchase/util/BillingManager$3;->this$0:Lcom/parrot/freeflight/purchase/util/BillingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 247
    invoke-static {}, Lcom/android/billingclient/api/SkuDetailsParams;->newBuilder()Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    move-result-object v0

    .line 248
    .local v0, "params":Lcom/android/billingclient/api/SkuDetailsParams$Builder;
    sget-object v1, Lcom/parrot/freeflight/purchase/util/InAppConstants;->IN_APP_SKUS:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->setSkusList(Ljava/util/List;)Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    move-result-object v1

    const-string v2, "inapp"

    .line 249
    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->setType(Ljava/lang/String;)Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    .line 250
    iget-object v1, p0, Lcom/parrot/freeflight/purchase/util/BillingManager$3;->this$0:Lcom/parrot/freeflight/purchase/util/BillingManager;

    invoke-static {v1}, Lcom/parrot/freeflight/purchase/util/BillingManager;->access$400(Lcom/parrot/freeflight/purchase/util/BillingManager;)Lcom/android/billingclient/api/BillingClient;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->build()Lcom/android/billingclient/api/SkuDetailsParams;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/purchase/util/BillingManager$3;->this$0:Lcom/parrot/freeflight/purchase/util/BillingManager;

    invoke-virtual {v1, v2, v3}, Lcom/android/billingclient/api/BillingClient;->querySkuDetailsAsync(Lcom/android/billingclient/api/SkuDetailsParams;Lcom/android/billingclient/api/SkuDetailsResponseListener;)V

    .line 251
    return-void
.end method
