.class Lcom/android/billingclient/api/BillingClientImpl$2;
.super Ljava/lang/Object;
.source "BillingClientImpl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/billingclient/api/BillingClientImpl;->launchPriceChangeConfirmationFlow(Landroid/app/Activity;Lcom/android/billingclient/api/PriceChangeFlowParams;Lcom/android/billingclient/api/PriceChangeConfirmationListener;)V
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
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/billingclient/api/BillingClientImpl;

.field final synthetic val$extraParamsFinal:Landroid/os/Bundle;

.field final synthetic val$sku:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/BillingClientImpl;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/billingclient/api/BillingClientImpl;

    .prologue
    .line 422
    iput-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl$2;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    iput-object p2, p0, Lcom/android/billingclient/api/BillingClientImpl$2;->val$sku:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/billingclient/api/BillingClientImpl$2;->val$extraParamsFinal:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Landroid/os/Bundle;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 425
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl$2;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->access$300(Lcom/android/billingclient/api/BillingClientImpl;)Lcom/android/vending/billing/IInAppBillingService;

    move-result-object v0

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/android/billingclient/api/BillingClientImpl$2;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    .line 427
    invoke-static {v2}, Lcom/android/billingclient/api/BillingClientImpl;->access$200(Lcom/android/billingclient/api/BillingClientImpl;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/billingclient/api/BillingClientImpl$2;->val$sku:Ljava/lang/String;

    const-string/jumbo v4, "subs"

    iget-object v5, p0, Lcom/android/billingclient/api/BillingClientImpl$2;->val$extraParamsFinal:Landroid/os/Bundle;

    .line 425
    invoke-interface/range {v0 .. v5}, Lcom/android/vending/billing/IInAppBillingService;->getSubscriptionManagementIntent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

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
    .line 422
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl$2;->call()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
