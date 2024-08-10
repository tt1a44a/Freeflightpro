.class Lcom/parrot/freeflight/purchase/util/BillingManager$5;
.super Ljava/lang/Object;
.source "BillingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/purchase/util/BillingManager;->queryPurchasesHistory()V
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
    .line 297
    iput-object p1, p0, Lcom/parrot/freeflight/purchase/util/BillingManager$5;->this$0:Lcom/parrot/freeflight/purchase/util/BillingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 300
    iget-object v0, p0, Lcom/parrot/freeflight/purchase/util/BillingManager$5;->this$0:Lcom/parrot/freeflight/purchase/util/BillingManager;

    invoke-static {v0}, Lcom/parrot/freeflight/purchase/util/BillingManager;->access$400(Lcom/parrot/freeflight/purchase/util/BillingManager;)Lcom/android/billingclient/api/BillingClient;

    move-result-object v0

    const-string v1, "inapp"

    new-instance v2, Lcom/parrot/freeflight/purchase/util/BillingManager$5$1;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/purchase/util/BillingManager$5$1;-><init>(Lcom/parrot/freeflight/purchase/util/BillingManager$5;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/billingclient/api/BillingClient;->queryPurchaseHistoryAsync(Ljava/lang/String;Lcom/android/billingclient/api/PurchaseHistoryResponseListener;)V

    .line 307
    return-void
.end method
