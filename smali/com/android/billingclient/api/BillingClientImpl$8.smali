.class Lcom/android/billingclient/api/BillingClientImpl$8;
.super Ljava/lang/Object;
.source "BillingClientImpl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/billingclient/api/BillingClientImpl;->queryPurchases(Ljava/lang/String;J)V
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

.field final synthetic val$callback:Lcom/android/billingclient/api/BillingClientNativeCallback;

.field final synthetic val$skuType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/BillingClientImpl;Ljava/lang/String;Lcom/android/billingclient/api/BillingClientNativeCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/billingclient/api/BillingClientImpl;

    .prologue
    .line 716
    iput-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl$8;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    iput-object p2, p0, Lcom/android/billingclient/api/BillingClientImpl$8;->val$skuType:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/billingclient/api/BillingClientImpl$8;->val$callback:Lcom/android/billingclient/api/BillingClientNativeCallback;

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
    .line 716
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl$8;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 3

    .prologue
    .line 719
    iget-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl$8;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    iget-object v2, p0, Lcom/android/billingclient/api/BillingClientImpl$8;->val$skuType:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/billingclient/api/BillingClientImpl;->access$400(Lcom/android/billingclient/api/BillingClientImpl;Ljava/lang/String;)Lcom/android/billingclient/api/Purchase$PurchasesResult;

    move-result-object v0

    .line 722
    .local v0, "result":Lcom/android/billingclient/api/Purchase$PurchasesResult;
    iget-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl$8;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    new-instance v2, Lcom/android/billingclient/api/BillingClientImpl$8$1;

    invoke-direct {v2, p0, v0}, Lcom/android/billingclient/api/BillingClientImpl$8$1;-><init>(Lcom/android/billingclient/api/BillingClientImpl$8;Lcom/android/billingclient/api/Purchase$PurchasesResult;)V

    invoke-static {v1, v2}, Lcom/android/billingclient/api/BillingClientImpl;->access$500(Lcom/android/billingclient/api/BillingClientImpl;Ljava/lang/Runnable;)V

    .line 730
    const/4 v1, 0x0

    return-object v1
.end method
