.class Lcom/android/billingclient/api/BillingClientImpl$14$1;
.super Ljava/lang/Object;
.source "BillingClientImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/billingclient/api/BillingClientImpl$14;->call()Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/billingclient/api/BillingClientImpl$14;

.field final synthetic val$result:Lcom/android/billingclient/api/BillingClientImpl$PurchaseHistoryResult;


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/BillingClientImpl$14;Lcom/android/billingclient/api/BillingClientImpl$PurchaseHistoryResult;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/billingclient/api/BillingClientImpl$14;

    .prologue
    .line 873
    iput-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl$14$1;->this$1:Lcom/android/billingclient/api/BillingClientImpl$14;

    iput-object p2, p0, Lcom/android/billingclient/api/BillingClientImpl$14$1;->val$result:Lcom/android/billingclient/api/BillingClientImpl$PurchaseHistoryResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 876
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl$14$1;->this$1:Lcom/android/billingclient/api/BillingClientImpl$14;

    iget-object v0, v0, Lcom/android/billingclient/api/BillingClientImpl$14;->val$listener:Lcom/android/billingclient/api/PurchaseHistoryResponseListener;

    iget-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl$14$1;->val$result:Lcom/android/billingclient/api/BillingClientImpl$PurchaseHistoryResult;

    .line 877
    invoke-virtual {v1}, Lcom/android/billingclient/api/BillingClientImpl$PurchaseHistoryResult;->getBillingResult()Lcom/android/billingclient/api/BillingResult;

    move-result-object v1

    iget-object v2, p0, Lcom/android/billingclient/api/BillingClientImpl$14$1;->val$result:Lcom/android/billingclient/api/BillingClientImpl$PurchaseHistoryResult;

    invoke-virtual {v2}, Lcom/android/billingclient/api/BillingClientImpl$PurchaseHistoryResult;->getPurchaseHistoryRecordList()Ljava/util/List;

    move-result-object v2

    .line 876
    invoke-interface {v0, v1, v2}, Lcom/android/billingclient/api/PurchaseHistoryResponseListener;->onPurchaseHistoryResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    .line 878
    return-void
.end method
