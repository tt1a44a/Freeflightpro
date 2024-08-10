.class Lcom/android/billingclient/api/BillingClientImpl$16$2;
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

.field final synthetic val$billingResult:Lcom/android/billingclient/api/BillingResult;


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/BillingClientImpl$16;Lcom/android/billingclient/api/BillingResult;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/billingclient/api/BillingClientImpl$16;

    .prologue
    .line 1032
    iput-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl$16$2;->this$1:Lcom/android/billingclient/api/BillingClientImpl$16;

    iput-object p2, p0, Lcom/android/billingclient/api/BillingClientImpl$16$2;->val$billingResult:Lcom/android/billingclient/api/BillingResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1035
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl$16$2;->this$1:Lcom/android/billingclient/api/BillingClientImpl$16;

    iget-object v0, v0, Lcom/android/billingclient/api/BillingClientImpl$16;->val$listener:Lcom/android/billingclient/api/RewardResponseListener;

    iget-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl$16$2;->val$billingResult:Lcom/android/billingclient/api/BillingResult;

    invoke-interface {v0, v1}, Lcom/android/billingclient/api/RewardResponseListener;->onRewardResponse(Lcom/android/billingclient/api/BillingResult;)V

    .line 1036
    return-void
.end method
