.class Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection$1;
.super Ljava/lang/Object;
.source "BillingClientImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->notifySetupResult(Lcom/android/billingclient/api/BillingResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;

.field final synthetic val$result:Lcom/android/billingclient/api/BillingResult;


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;Lcom/android/billingclient/api/BillingResult;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;

    .prologue
    .line 1516
    iput-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection$1;->this$1:Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;

    iput-object p2, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection$1;->val$result:Lcom/android/billingclient/api/BillingResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1519
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection$1;->this$1:Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;

    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->access$1300(Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1520
    :try_start_0
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection$1;->this$1:Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;

    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->access$1400(Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;)Lcom/android/billingclient/api/BillingClientStateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1521
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection$1;->this$1:Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;

    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->access$1400(Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;)Lcom/android/billingclient/api/BillingClientStateListener;

    move-result-object v0

    iget-object v2, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection$1;->val$result:Lcom/android/billingclient/api/BillingResult;

    invoke-interface {v0, v2}, Lcom/android/billingclient/api/BillingClientStateListener;->onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V

    .line 1523
    :cond_0
    monitor-exit v1

    .line 1524
    return-void

    .line 1523
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
