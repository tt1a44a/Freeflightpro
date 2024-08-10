.class Lcom/android/billingclient/api/BillingClientImpl$8$1;
.super Ljava/lang/Object;
.source "BillingClientImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/billingclient/api/BillingClientImpl$8;->call()Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/billingclient/api/BillingClientImpl$8;

.field final synthetic val$result:Lcom/android/billingclient/api/Purchase$PurchasesResult;


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/BillingClientImpl$8;Lcom/android/billingclient/api/Purchase$PurchasesResult;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/billingclient/api/BillingClientImpl$8;

    .prologue
    .line 723
    iput-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl$8$1;->this$1:Lcom/android/billingclient/api/BillingClientImpl$8;

    iput-object p2, p0, Lcom/android/billingclient/api/BillingClientImpl$8$1;->val$result:Lcom/android/billingclient/api/Purchase$PurchasesResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 726
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl$8$1;->this$1:Lcom/android/billingclient/api/BillingClientImpl$8;

    iget-object v0, v0, Lcom/android/billingclient/api/BillingClientImpl$8;->val$callback:Lcom/android/billingclient/api/BillingClientNativeCallback;

    iget-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl$8$1;->val$result:Lcom/android/billingclient/api/Purchase$PurchasesResult;

    .line 727
    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase$PurchasesResult;->getBillingResult()Lcom/android/billingclient/api/BillingResult;

    move-result-object v1

    iget-object v2, p0, Lcom/android/billingclient/api/BillingClientImpl$8$1;->val$result:Lcom/android/billingclient/api/Purchase$PurchasesResult;

    invoke-virtual {v2}, Lcom/android/billingclient/api/Purchase$PurchasesResult;->getPurchasesList()Ljava/util/List;

    move-result-object v2

    .line 726
    invoke-virtual {v0, v1, v2}, Lcom/android/billingclient/api/BillingClientNativeCallback;->onQueryPurchasesResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    .line 728
    return-void
.end method
