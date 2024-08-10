.class Lcom/android/billingclient/api/BillingClientImpl$16$1;
.super Ljava/lang/Object;
.source "BillingClientImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/billingclient/api/BillingClientImpl$16;->call()Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/billingclient/api/BillingClientImpl$16;


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/BillingClientImpl$16;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/billingclient/api/BillingClientImpl$16;

    .prologue
    .line 1014
    iput-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl$16$1;->this$1:Lcom/android/billingclient/api/BillingClientImpl$16;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1017
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl$16$1;->this$1:Lcom/android/billingclient/api/BillingClientImpl$16;

    iget-object v0, v0, Lcom/android/billingclient/api/BillingClientImpl$16;->val$listener:Lcom/android/billingclient/api/RewardResponseListener;

    sget-object v1, Lcom/android/billingclient/api/BillingResults;->INTERNAL_ERROR:Lcom/android/billingclient/api/BillingResult;

    invoke-interface {v0, v1}, Lcom/android/billingclient/api/RewardResponseListener;->onRewardResponse(Lcom/android/billingclient/api/BillingResult;)V

    .line 1018
    return-void
.end method
