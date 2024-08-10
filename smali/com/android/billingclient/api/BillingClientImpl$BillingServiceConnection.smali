.class final Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;
.super Ljava/lang/Object;
.source "BillingClientImpl.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/billingclient/api/BillingClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BillingServiceConnection"
.end annotation


# instance fields
.field private disconnected:Z

.field private final lock:Ljava/lang/Object;

.field private mListener:Lcom/android/billingclient/api/BillingClientStateListener;

.field final synthetic this$0:Lcom/android/billingclient/api/BillingClientImpl;


# direct methods
.method private constructor <init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/BillingClientStateListener;)V
    .locals 1
    .param p1    # Lcom/android/billingclient/api/BillingClientImpl;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/android/billingclient/api/BillingClientStateListener;

    .prologue
    .line 1491
    iput-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1487
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->lock:Ljava/lang/Object;

    .line 1488
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->disconnected:Z

    .line 1492
    iput-object p2, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->mListener:Lcom/android/billingclient/api/BillingClientStateListener;

    .line 1493
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/BillingClientStateListener;Lcom/android/billingclient/api/BillingClientImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/billingclient/api/BillingClientImpl;
    .param p2, "x1"    # Lcom/android/billingclient/api/BillingClientStateListener;
    .param p3, "x2"    # Lcom/android/billingclient/api/BillingClientImpl$1;

    .prologue
    .line 1486
    invoke-direct {p0, p1, p2}, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/BillingClientStateListener;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;

    .prologue
    .line 1486
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;)Lcom/android/billingclient/api/BillingClientStateListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;

    .prologue
    .line 1486
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->mListener:Lcom/android/billingclient/api/BillingClientStateListener;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;

    .prologue
    .line 1486
    iget-boolean v0, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->disconnected:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;Lcom/android/billingclient/api/BillingResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;
    .param p1, "x1"    # Lcom/android/billingclient/api/BillingResult;

    .prologue
    .line 1486
    invoke-direct {p0, p1}, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->notifySetupResult(Lcom/android/billingclient/api/BillingResult;)V

    return-void
.end method

.method private notifySetupResult(Lcom/android/billingclient/api/BillingResult;)V
    .locals 2
    .param p1, "result"    # Lcom/android/billingclient/api/BillingResult;

    .prologue
    .line 1515
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    new-instance v1, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection$1;

    invoke-direct {v1, p0, p1}, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection$1;-><init>(Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;Lcom/android/billingclient/api/BillingResult;)V

    invoke-static {v0, v1}, Lcom/android/billingclient/api/BillingClientImpl;->access$500(Lcom/android/billingclient/api/BillingClientImpl;Ljava/lang/Runnable;)V

    .line 1526
    return-void
.end method


# virtual methods
.method markDisconnectedAndCleanUp()V
    .locals 2

    .prologue
    .line 1508
    iget-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 1509
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->mListener:Lcom/android/billingclient/api/BillingClientStateListener;

    .line 1510
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->disconnected:Z

    .line 1511
    monitor-exit v1

    .line 1512
    return-void

    .line 1511
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 1530
    const-string v1, "BillingClient"

    const-string v2, "Billing service connected."

    invoke-static {v1, v2}, Lcom/android/billingclient/util/BillingHelper;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1531
    iget-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-static {p2}, Lcom/android/vending/billing/IInAppBillingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/vending/billing/IInAppBillingService;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/billingclient/api/BillingClientImpl;->access$302(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/vending/billing/IInAppBillingService;)Lcom/android/vending/billing/IInAppBillingService;

    .line 1532
    iget-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    new-instance v2, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection$2;

    invoke-direct {v2, p0}, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection$2;-><init>(Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;)V

    const-wide/16 v4, 0x7530

    new-instance v3, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection$3;

    invoke-direct {v3, p0}, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection$3;-><init>(Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;)V

    .line 1533
    invoke-static {v1, v2, v4, v5, v3}, Lcom/android/billingclient/api/BillingClientImpl;->access$2300(Lcom/android/billingclient/api/BillingClientImpl;Ljava/util/concurrent/Callable;JLjava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 1614
    .local v0, "result":Ljava/util/concurrent/Future;
    if-nez v0, :cond_0

    .line 1615
    iget-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-static {v1}, Lcom/android/billingclient/api/BillingClientImpl;->access$2400(Lcom/android/billingclient/api/BillingClientImpl;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->notifySetupResult(Lcom/android/billingclient/api/BillingResult;)V

    .line 1617
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 1497
    const-string v0, "BillingClient"

    const-string v1, "Billing service disconnected."

    invoke-static {v0, v1}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1498
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/billingclient/api/BillingClientImpl;->access$302(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/vending/billing/IInAppBillingService;)Lcom/android/vending/billing/IInAppBillingService;

    .line 1499
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/billingclient/api/BillingClientImpl;->access$1202(Lcom/android/billingclient/api/BillingClientImpl;I)I

    .line 1500
    iget-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 1501
    :try_start_0
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->mListener:Lcom/android/billingclient/api/BillingClientStateListener;

    if-eqz v0, :cond_0

    .line 1502
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->mListener:Lcom/android/billingclient/api/BillingClientStateListener;

    invoke-interface {v0}, Lcom/android/billingclient/api/BillingClientStateListener;->onBillingServiceDisconnected()V

    .line 1504
    :cond_0
    monitor-exit v1

    .line 1505
    return-void

    .line 1504
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
