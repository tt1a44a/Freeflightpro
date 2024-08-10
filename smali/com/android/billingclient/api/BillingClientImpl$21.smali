.class Lcom/android/billingclient/api/BillingClientImpl$21;
.super Ljava/lang/Object;
.source "BillingClientImpl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/billingclient/api/BillingClientImpl;->isBillingSupportedOnVr(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult;
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/billingclient/api/BillingClientImpl;

.field final synthetic val$skuType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/BillingClientImpl;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/billingclient/api/BillingClientImpl;

    .prologue
    .line 1193
    iput-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl$21;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    iput-object p2, p0, Lcom/android/billingclient/api/BillingClientImpl$21;->val$skuType:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Integer;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1196
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl$21;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->access$300(Lcom/android/billingclient/api/BillingClientImpl;)Lcom/android/vending/billing/IInAppBillingService;

    move-result-object v0

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/android/billingclient/api/BillingClientImpl$21;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    .line 1198
    invoke-static {v2}, Lcom/android/billingclient/api/BillingClientImpl;->access$200(Lcom/android/billingclient/api/BillingClientImpl;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/billingclient/api/BillingClientImpl$21;->val$skuType:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/billingclient/api/BillingClientImpl$21;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    .line 1200
    invoke-static {v4}, Lcom/android/billingclient/api/BillingClientImpl;->access$1100(Lcom/android/billingclient/api/BillingClientImpl;)Landroid/os/Bundle;

    move-result-object v4

    .line 1196
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/vending/billing/IInAppBillingService;->isBillingSupportedExtraParams(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1193
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl$21;->call()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
