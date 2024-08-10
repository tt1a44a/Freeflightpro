.class Lcom/android/billingclient/api/BillingClientImpl$3;
.super Landroid/os/ResultReceiver;
.source "BillingClientImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/billingclient/api/BillingClientImpl;->launchPriceChangeConfirmationFlow(Landroid/app/Activity;Lcom/android/billingclient/api/PriceChangeFlowParams;Lcom/android/billingclient/api/PriceChangeConfirmationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/billingclient/api/BillingClientImpl;

.field final synthetic val$listener:Lcom/android/billingclient/api/PriceChangeConfirmationListener;


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/BillingClientImpl;Landroid/os/Handler;Lcom/android/billingclient/api/PriceChangeConfirmationListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/billingclient/api/BillingClientImpl;
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 456
    iput-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl$3;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    iput-object p3, p0, Lcom/android/billingclient/api/BillingClientImpl$3;->val$listener:Lcom/android/billingclient/api/PriceChangeConfirmationListener;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onReceiveResult(ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .prologue
    .line 460
    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->newBuilder()Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object v1

    .line 461
    invoke-virtual {v1, p1}, Lcom/android/billingclient/api/BillingResult$Builder;->setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object v1

    const-string v2, "BillingClient"

    .line 462
    invoke-static {p2, v2}, Lcom/android/billingclient/util/BillingHelper;->getDebugMessageFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/BillingResult$Builder;->setDebugMessage(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object v1

    .line 463
    invoke-virtual {v1}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    .line 465
    .local v0, "billingResult":Lcom/android/billingclient/api/BillingResult;
    iget-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl$3;->val$listener:Lcom/android/billingclient/api/PriceChangeConfirmationListener;

    invoke-interface {v1, v0}, Lcom/android/billingclient/api/PriceChangeConfirmationListener;->onPriceChangeConfirmationResult(Lcom/android/billingclient/api/BillingResult;)V

    .line 466
    return-void
.end method
