.class Lcom/android/billingclient/api/BillingClientImpl$14;
.super Ljava/lang/Object;
.source "BillingClientImpl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/billingclient/api/BillingClientImpl;->queryPurchaseHistoryAsync(Ljava/lang/String;Lcom/android/billingclient/api/PurchaseHistoryResponseListener;)V
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

.field final synthetic val$listener:Lcom/android/billingclient/api/PurchaseHistoryResponseListener;

.field final synthetic val$skuType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/BillingClientImpl;Ljava/lang/String;Lcom/android/billingclient/api/PurchaseHistoryResponseListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/billingclient/api/BillingClientImpl;

    .prologue
    .line 866
    iput-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl$14;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    iput-object p2, p0, Lcom/android/billingclient/api/BillingClientImpl$14;->val$skuType:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/billingclient/api/BillingClientImpl$14;->val$listener:Lcom/android/billingclient/api/PurchaseHistoryResponseListener;

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
    .line 866
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl$14;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 3

    .prologue
    .line 869
    iget-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl$14;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    iget-object v2, p0, Lcom/android/billingclient/api/BillingClientImpl$14;->val$skuType:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/billingclient/api/BillingClientImpl;->access$700(Lcom/android/billingclient/api/BillingClientImpl;Ljava/lang/String;)Lcom/android/billingclient/api/BillingClientImpl$PurchaseHistoryResult;

    move-result-object v0

    .line 872
    .local v0, "result":Lcom/android/billingclient/api/BillingClientImpl$PurchaseHistoryResult;
    iget-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl$14;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    new-instance v2, Lcom/android/billingclient/api/BillingClientImpl$14$1;

    invoke-direct {v2, p0, v0}, Lcom/android/billingclient/api/BillingClientImpl$14$1;-><init>(Lcom/android/billingclient/api/BillingClientImpl$14;Lcom/android/billingclient/api/BillingClientImpl$PurchaseHistoryResult;)V

    invoke-static {v1, v2}, Lcom/android/billingclient/api/BillingClientImpl;->access$500(Lcom/android/billingclient/api/BillingClientImpl;Ljava/lang/Runnable;)V

    .line 880
    const/4 v1, 0x0

    return-object v1
.end method
