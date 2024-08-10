.class Lcom/android/billingclient/api/BillingClientImpl;
.super Lcom/android/billingclient/api/BillingClient;
.source "BillingClientImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/billingclient/api/BillingClientImpl$PurchaseHistoryResult;,
        Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;,
        Lcom/android/billingclient/api/BillingClientImpl$ClientState;
    }
.end annotation


# static fields
.field private static final ASYNCHRONOUS_TIMEOUT_IN_MILLISECONDS:J = 0x7530L

.field private static final GET_SKU_DETAILS_ITEM_LIST:Ljava/lang/String; = "ITEM_ID_LIST"

.field private static final MAX_IAP_VERSION:I = 0xa

.field private static final MAX_SKU_DETAILS_ITEMS_PER_REQUEST:I = 0x14

.field private static final MIN_IAP_VERSION:I = 0x3

.field private static final SYNCHRONOUS_TIMEOUT_IN_MILLISECONDS:J = 0x1388L

.field private static final TAG:Ljava/lang/String; = "BillingClient"


# instance fields
.field private final mApplicationContext:Landroid/content/Context;

.field private final mBroadcastManager:Lcom/android/billingclient/api/BillingBroadcastManager;

.field private final mChildDirected:I

.field private mClientState:I

.field private final mEnablePendingPurchases:Z

.field private mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private mIABv10Supported:Z

.field private mIABv6Supported:Z

.field private mIABv8Supported:Z

.field private mIABv9Supported:Z

.field private final mQualifiedVersionNumber:Ljava/lang/String;

.field private mService:Lcom/android/vending/billing/IInAppBillingService;

.field private mServiceConnection:Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;

.field private mSubscriptionUpdateSupported:Z

.field private mSubscriptionsSupported:Z

.field private final mUiThreadHandler:Landroid/os/Handler;

.field private final mUnderAgeOfConsent:I

.field private final onPurchaseFinishedReceiver:Landroid/os/ResultReceiver;


# direct methods
.method private constructor <init>(Landroid/app/Activity;IIZLjava/lang/String;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "childDirected"    # I
    .param p3, "underAgeOfConsent"    # I
    .param p4, "enablePendingPurchases"    # Z
    .param p5, "versionOverride"    # Ljava/lang/String;

    .prologue
    .line 213
    .line 214
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v5, Lcom/android/billingclient/api/BillingClientNativeCallback;

    invoke-direct {v5}, Lcom/android/billingclient/api/BillingClientNativeCallback;-><init>()V

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    .line 213
    invoke-direct/range {v0 .. v6}, Lcom/android/billingclient/api/BillingClientImpl;-><init>(Landroid/content/Context;IIZLcom/android/billingclient/api/PurchasesUpdatedListener;Ljava/lang/String;)V

    .line 220
    return-void
.end method

.method constructor <init>(Landroid/content/Context;IIZLcom/android/billingclient/api/PurchasesUpdatedListener;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "childDirected"    # I
    .param p3, "underAgeOfConsent"    # I
    .param p4, "enablePendingPurchases"    # Z
    .param p5, "listener"    # Lcom/android/billingclient/api/PurchasesUpdatedListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 196
    const-string v6, "2.0.3"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/billingclient/api/BillingClientImpl;-><init>(Landroid/content/Context;IIZLcom/android/billingclient/api/PurchasesUpdatedListener;Ljava/lang/String;)V

    .line 203
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;IIZLcom/android/billingclient/api/PurchasesUpdatedListener;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "childDirected"    # I
    .param p3, "underAgeOfConsent"    # I
    .param p4, "enablePendingPurchases"    # Z
    .param p5, "listener"    # Lcom/android/billingclient/api/PurchasesUpdatedListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6, "versionNumber"    # Ljava/lang/String;

    .prologue
    .line 228
    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClient;-><init>()V

    .line 94
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->mClientState:I

    .line 109
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->mUiThreadHandler:Landroid/os/Handler;

    .line 169
    new-instance v0, Lcom/android/billingclient/api/BillingClientImpl$1;

    iget-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->mUiThreadHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/billingclient/api/BillingClientImpl$1;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->onPurchaseFinishedReceiver:Landroid/os/ResultReceiver;

    .line 229
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->mApplicationContext:Landroid/content/Context;

    .line 230
    iput p2, p0, Lcom/android/billingclient/api/BillingClientImpl;->mChildDirected:I

    .line 231
    iput p3, p0, Lcom/android/billingclient/api/BillingClientImpl;->mUnderAgeOfConsent:I

    .line 232
    iput-boolean p4, p0, Lcom/android/billingclient/api/BillingClientImpl;->mEnablePendingPurchases:Z

    .line 233
    new-instance v0, Lcom/android/billingclient/api/BillingBroadcastManager;

    iget-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->mApplicationContext:Landroid/content/Context;

    invoke-direct {v0, v1, p5}, Lcom/android/billingclient/api/BillingBroadcastManager;-><init>(Landroid/content/Context;Lcom/android/billingclient/api/PurchasesUpdatedListener;)V

    iput-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->mBroadcastManager:Lcom/android/billingclient/api/BillingBroadcastManager;

    .line 234
    iput-object p6, p0, Lcom/android/billingclient/api/BillingClientImpl;->mQualifiedVersionNumber:Ljava/lang/String;

    .line 235
    return-void
.end method

.method static synthetic access$000(Lcom/android/billingclient/api/BillingClientImpl;)Lcom/android/billingclient/api/BillingBroadcastManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/billingclient/api/BillingClientImpl;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->mBroadcastManager:Lcom/android/billingclient/api/BillingBroadcastManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/billingclient/api/BillingClientImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/billingclient/api/BillingClientImpl;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->mQualifiedVersionNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/billingclient/api/BillingClientImpl;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Lcom/android/billingclient/api/BillingClientImpl;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClientImpl;->generateVrBundle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/billingclient/api/BillingClientImpl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/billingclient/api/BillingClientImpl;
    .param p1, "x1"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->mClientState:I

    return p1
.end method

.method static synthetic access$1602(Lcom/android/billingclient/api/BillingClientImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/billingclient/api/BillingClientImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->mSubscriptionUpdateSupported:Z

    return p1
.end method

.method static synthetic access$1702(Lcom/android/billingclient/api/BillingClientImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/billingclient/api/BillingClientImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->mSubscriptionsSupported:Z

    return p1
.end method

.method static synthetic access$1802(Lcom/android/billingclient/api/BillingClientImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/billingclient/api/BillingClientImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->mIABv10Supported:Z

    return p1
.end method

.method static synthetic access$1902(Lcom/android/billingclient/api/BillingClientImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/billingclient/api/BillingClientImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->mIABv9Supported:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/billingclient/api/BillingClientImpl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/billingclient/api/BillingClientImpl;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->mApplicationContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/billingclient/api/BillingClientImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/billingclient/api/BillingClientImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->mIABv8Supported:Z

    return p1
.end method

.method static synthetic access$2102(Lcom/android/billingclient/api/BillingClientImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/billingclient/api/BillingClientImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->mIABv6Supported:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/android/billingclient/api/BillingClientImpl;Ljava/util/concurrent/Callable;JLjava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 2
    .param p0, "x0"    # Lcom/android/billingclient/api/BillingClientImpl;
    .param p1, "x1"    # Ljava/util/concurrent/Callable;
    .param p2, "x2"    # J
    .param p4, "x3"    # Ljava/lang/Runnable;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/billingclient/api/BillingClientImpl;->executeAsync(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/billingclient/api/BillingClientImpl;)Lcom/android/billingclient/api/BillingResult;
    .locals 1
    .param p0, "x0"    # Lcom/android/billingclient/api/BillingClientImpl;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClientImpl;->getBillingResultForNullFutureResult()Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/billingclient/api/BillingClientImpl;)Lcom/android/vending/billing/IInAppBillingService;
    .locals 1
    .param p0, "x0"    # Lcom/android/billingclient/api/BillingClientImpl;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->mService:Lcom/android/vending/billing/IInAppBillingService;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/vending/billing/IInAppBillingService;)Lcom/android/vending/billing/IInAppBillingService;
    .locals 0
    .param p0, "x0"    # Lcom/android/billingclient/api/BillingClientImpl;
    .param p1, "x1"    # Lcom/android/vending/billing/IInAppBillingService;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->mService:Lcom/android/vending/billing/IInAppBillingService;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/billingclient/api/BillingClientImpl;Ljava/lang/String;)Lcom/android/billingclient/api/Purchase$PurchasesResult;
    .locals 1
    .param p0, "x0"    # Lcom/android/billingclient/api/BillingClientImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/billingclient/api/BillingClientImpl;->queryPurchasesInternal(Ljava/lang/String;)Lcom/android/billingclient/api/Purchase$PurchasesResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/billingclient/api/BillingClientImpl;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/billingclient/api/BillingClientImpl;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/billingclient/api/BillingClientImpl;->postToUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/ConsumeParams;Lcom/android/billingclient/api/ConsumeResponseListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/billingclient/api/BillingClientImpl;
    .param p1, "x1"    # Lcom/android/billingclient/api/ConsumeParams;
    .param p2, "x2"    # Lcom/android/billingclient/api/ConsumeResponseListener;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/billingclient/api/BillingClientImpl;->consumeInternal(Lcom/android/billingclient/api/ConsumeParams;Lcom/android/billingclient/api/ConsumeResponseListener;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/billingclient/api/BillingClientImpl;Ljava/lang/String;)Lcom/android/billingclient/api/BillingClientImpl$PurchaseHistoryResult;
    .locals 1
    .param p0, "x0"    # Lcom/android/billingclient/api/BillingClientImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/billingclient/api/BillingClientImpl;->queryPurchaseHistoryInternal(Ljava/lang/String;)Lcom/android/billingclient/api/BillingClientImpl$PurchaseHistoryResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/billingclient/api/BillingClientImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/billingclient/api/BillingClientImpl;

    .prologue
    .line 57
    iget v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->mChildDirected:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/billingclient/api/BillingClientImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/billingclient/api/BillingClientImpl;

    .prologue
    .line 57
    iget v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->mUnderAgeOfConsent:I

    return v0
.end method

.method private acknowledgePurchase(Lcom/android/billingclient/api/AcknowledgePurchaseParams;J)V
    .locals 2
    .param p1, "acknowledgePurchaseParams"    # Lcom/android/billingclient/api/AcknowledgePurchaseParams;
    .param p2, "futureHandle"    # J

    .prologue
    .line 1142
    new-instance v0, Lcom/android/billingclient/api/BillingClientNativeCallback;

    invoke-direct {v0, p2, p3}, Lcom/android/billingclient/api/BillingClientNativeCallback;-><init>(J)V

    invoke-virtual {p0, p1, v0}, Lcom/android/billingclient/api/BillingClientImpl;->acknowledgePurchase(Lcom/android/billingclient/api/AcknowledgePurchaseParams;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)V

    .line 1143
    return-void
.end method

.method private broadcastFailureAndReturnBillingResponse(Lcom/android/billingclient/api/BillingResult;)Lcom/android/billingclient/api/BillingResult;
    .locals 2
    .param p1, "billingResult"    # Lcom/android/billingclient/api/BillingResult;

    .prologue
    .line 668
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->mBroadcastManager:Lcom/android/billingclient/api/BillingBroadcastManager;

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingBroadcastManager;->getListener()Lcom/android/billingclient/api/PurchasesUpdatedListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/billingclient/api/PurchasesUpdatedListener;->onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    .line 669
    return-object p1
.end method

.method private consumeAsync(Lcom/android/billingclient/api/ConsumeParams;J)V
    .locals 2
    .param p1, "consumeParams"    # Lcom/android/billingclient/api/ConsumeParams;
    .param p2, "futureHandle"    # J

    .prologue
    .line 849
    new-instance v0, Lcom/android/billingclient/api/BillingClientNativeCallback;

    invoke-direct {v0, p2, p3}, Lcom/android/billingclient/api/BillingClientNativeCallback;-><init>(J)V

    invoke-virtual {p0, p1, v0}, Lcom/android/billingclient/api/BillingClientImpl;->consumeAsync(Lcom/android/billingclient/api/ConsumeParams;Lcom/android/billingclient/api/ConsumeResponseListener;)V

    .line 850
    return-void
.end method

.method private consumeInternal(Lcom/android/billingclient/api/ConsumeParams;Lcom/android/billingclient/api/ConsumeResponseListener;)V
    .locals 11
    .param p1, "consumeParams"    # Lcom/android/billingclient/api/ConsumeParams;
    .param p2, "listener"    # Lcom/android/billingclient/api/ConsumeResponseListener;
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 1425
    invoke-virtual {p1}, Lcom/android/billingclient/api/ConsumeParams;->getPurchaseToken()Ljava/lang/String;

    move-result-object v5

    .line 1427
    .local v5, "purchaseToken":Ljava/lang/String;
    :try_start_0
    const-string v0, "BillingClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Consuming purchase with token: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/billingclient/util/BillingHelper;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1430
    iget-boolean v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->mIABv9Supported:Z

    if-eqz v0, :cond_0

    .line 1431
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/16 v1, 0x9

    iget-object v3, p0, Lcom/android/billingclient/api/BillingClientImpl;->mApplicationContext:Landroid/content/Context;

    .line 1434
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-boolean v9, p0, Lcom/android/billingclient/api/BillingClientImpl;->mIABv9Supported:Z

    iget-object v10, p0, Lcom/android/billingclient/api/BillingClientImpl;->mQualifiedVersionNumber:Ljava/lang/String;

    .line 1436
    invoke-static {p1, v9, v10}, Lcom/android/billingclient/util/BillingHelper;->constructExtraParamsForConsume(Lcom/android/billingclient/api/ConsumeParams;ZLjava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    .line 1432
    invoke-interface {v0, v1, v3, v5, v9}, Lcom/android/vending/billing/IInAppBillingService;->consumePurchaseExtraParams(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v8

    .line 1438
    .local v8, "responseBundle":Landroid/os/Bundle;
    const-string v0, "RESPONSE_CODE"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1439
    .local v2, "responseCode":I
    const-string v0, "BillingClient"

    invoke-static {v8, v0}, Lcom/android/billingclient/util/BillingHelper;->getDebugMessageFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1447
    .end local v8    # "responseBundle":Landroid/os/Bundle;
    .local v6, "debugMessage":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->newBuilder()Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object v0

    .line 1448
    invoke-virtual {v0, v2}, Lcom/android/billingclient/api/BillingResult$Builder;->setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object v0

    .line 1449
    invoke-virtual {v0, v6}, Lcom/android/billingclient/api/BillingResult$Builder;->setDebugMessage(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object v0

    .line 1450
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    move-result-object v4

    .line 1452
    .local v4, "billingResult":Lcom/android/billingclient/api/BillingResult;
    if-nez v2, :cond_1

    .line 1453
    new-instance v0, Lcom/android/billingclient/api/BillingClientImpl$22;

    invoke-direct {v0, p0, p2, v4, v5}, Lcom/android/billingclient/api/BillingClientImpl$22;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/ConsumeResponseListener;Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/billingclient/api/BillingClientImpl;->postToUiThread(Ljava/lang/Runnable;)V

    .line 1483
    .end local v2    # "responseCode":I
    .end local v4    # "billingResult":Lcom/android/billingclient/api/BillingResult;
    .end local v6    # "debugMessage":Ljava/lang/String;
    :goto_1
    return-void

    .line 1441
    :cond_0
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v1, 0x3

    iget-object v3, p0, Lcom/android/billingclient/api/BillingClientImpl;->mApplicationContext:Landroid/content/Context;

    .line 1443
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1442
    invoke-interface {v0, v1, v3, v5}, Lcom/android/vending/billing/IInAppBillingService;->consumePurchase(ILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1444
    .restart local v2    # "responseCode":I
    const-string v6, ""

    .restart local v6    # "debugMessage":Ljava/lang/String;
    goto :goto_0

    .line 1462
    .restart local v4    # "billingResult":Lcom/android/billingclient/api/BillingResult;
    :cond_1
    new-instance v0, Lcom/android/billingclient/api/BillingClientImpl$23;

    move-object v1, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/billingclient/api/BillingClientImpl$23;-><init>(Lcom/android/billingclient/api/BillingClientImpl;ILcom/android/billingclient/api/ConsumeResponseListener;Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/billingclient/api/BillingClientImpl;->postToUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1472
    .end local v2    # "responseCode":I
    .end local v4    # "billingResult":Lcom/android/billingclient/api/BillingResult;
    .end local v6    # "debugMessage":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 1473
    .local v7, "e":Ljava/lang/Exception;
    new-instance v0, Lcom/android/billingclient/api/BillingClientImpl$24;

    invoke-direct {v0, p0, v7, p2, v5}, Lcom/android/billingclient/api/BillingClientImpl$24;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Ljava/lang/Exception;Lcom/android/billingclient/api/ConsumeResponseListener;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/billingclient/api/BillingClientImpl;->postToUiThread(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method private executeAsync(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 8
    .param p1    # Ljava/util/concurrent/Callable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "maxTimeout"    # J
    .param p4, "onTimeout"    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;J",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1157
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    const-wide v4, 0x3fee666666666666L    # 0.95

    long-to-double v6, p2

    mul-double/2addr v4, v6

    double-to-long v0, v4

    .line 1158
    .local v0, "actualTimeout":J
    iget-object v4, p0, Lcom/android/billingclient/api/BillingClientImpl;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    if-nez v4, :cond_0

    .line 1159
    sget v4, Lcom/android/billingclient/util/BillingHelper;->NUMBER_OF_CORES:I

    invoke-static {v4}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    iput-object v4, p0, Lcom/android/billingclient/api/BillingClientImpl;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 1164
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/android/billingclient/api/BillingClientImpl;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v4, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1170
    .local v3, "task":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    iget-object v4, p0, Lcom/android/billingclient/api/BillingClientImpl;->mUiThreadHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/billingclient/api/BillingClientImpl$20;

    invoke-direct {v5, p0, v3, p4}, Lcom/android/billingclient/api/BillingClientImpl$20;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Ljava/util/concurrent/Future;Ljava/lang/Runnable;)V

    invoke-virtual {v4, v5, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1186
    .end local v3    # "task":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    :goto_0
    return-object v3

    .line 1165
    :catch_0
    move-exception v2

    .line 1167
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "BillingClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Async task throws exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1168
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private generateVrBundle()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 1224
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1225
    .local v0, "result":Landroid/os/Bundle;
    const-string/jumbo v1, "vr"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1226
    return-object v0
.end method

.method private getBillingResultForNullFutureResult()Lcom/android/billingclient/api/BillingResult;
    .locals 2

    .prologue
    .line 1621
    iget v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->mClientState:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->mClientState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    sget-object v0, Lcom/android/billingclient/api/BillingResults;->SERVICE_DISCONNECTED:Lcom/android/billingclient/api/BillingResult;

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/android/billingclient/api/BillingResults;->INTERNAL_ERROR:Lcom/android/billingclient/api/BillingResult;

    goto :goto_0
.end method

.method private isBillingSupportedOnVr(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult;
    .locals 8
    .param p1, "skuType"    # Ljava/lang/String;

    .prologue
    const-wide/16 v6, 0x1388

    .line 1191
    new-instance v3, Lcom/android/billingclient/api/BillingClientImpl$21;

    invoke-direct {v3, p0, p1}, Lcom/android/billingclient/api/BillingClientImpl$21;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 1192
    invoke-direct {p0, v3, v6, v7, v4}, Lcom/android/billingclient/api/BillingClientImpl;->executeAsync(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 1207
    .local v1, "futureSupportedResult":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Integer;>;"
    const-wide/16 v4, 0x1388

    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1208
    invoke-interface {v1, v4, v5, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1209
    .local v2, "supportedResult":I
    if-nez v2, :cond_0

    sget-object v3, Lcom/android/billingclient/api/BillingResults;->OK:Lcom/android/billingclient/api/BillingResult;

    .line 1215
    .end local v2    # "supportedResult":I
    :goto_0
    return-object v3

    .line 1209
    .restart local v2    # "supportedResult":I
    :cond_0
    sget-object v3, Lcom/android/billingclient/api/BillingResults;->FEATURE_NOT_SUPPORTED:Lcom/android/billingclient/api/BillingResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1212
    .end local v2    # "supportedResult":I
    :catch_0
    move-exception v0

    .line 1213
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "BillingClient"

    const-string v4, "Exception while checking if billing is supported; try to reconnect"

    invoke-static {v3, v4}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1215
    sget-object v3, Lcom/android/billingclient/api/BillingResults;->SERVICE_DISCONNECTED:Lcom/android/billingclient/api/BillingResult;

    goto :goto_0
.end method

.method private launchBillingFlowCpp(Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;)I
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "params"    # Lcom/android/billingclient/api/BillingFlowParams;

    .prologue
    .line 673
    invoke-virtual {p0, p1, p2}, Lcom/android/billingclient/api/BillingClientImpl;->launchBillingFlow(Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    return v0
.end method

.method private launchPriceChangeConfirmationFlow(Landroid/app/Activity;Lcom/android/billingclient/api/PriceChangeFlowParams;J)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "priceChangeFlowParams"    # Lcom/android/billingclient/api/PriceChangeFlowParams;
    .param p3, "futureHandle"    # J

    .prologue
    .line 383
    new-instance v0, Lcom/android/billingclient/api/BillingClientNativeCallback;

    invoke-direct {v0, p3, p4}, Lcom/android/billingclient/api/BillingClientNativeCallback;-><init>(J)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/billingclient/api/BillingClientImpl;->launchPriceChangeConfirmationFlow(Landroid/app/Activity;Lcom/android/billingclient/api/PriceChangeFlowParams;Lcom/android/billingclient/api/PriceChangeConfirmationListener;)V

    .line 385
    return-void
.end method

.method private loadRewardedSku(Lcom/android/billingclient/api/RewardLoadParams;J)V
    .locals 2
    .param p1, "params"    # Lcom/android/billingclient/api/RewardLoadParams;
    .param p2, "futureHandle"    # J

    .prologue
    .line 1055
    new-instance v0, Lcom/android/billingclient/api/BillingClientNativeCallback;

    invoke-direct {v0, p2, p3}, Lcom/android/billingclient/api/BillingClientNativeCallback;-><init>(J)V

    invoke-virtual {p0, p1, v0}, Lcom/android/billingclient/api/BillingClientImpl;->loadRewardedSku(Lcom/android/billingclient/api/RewardLoadParams;Lcom/android/billingclient/api/RewardResponseListener;)V

    .line 1056
    return-void
.end method

.method private postToUiThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 1415
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1419
    :goto_0
    return-void

    .line 1418
    :cond_0
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->mUiThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private queryPurchaseHistoryAsync(Ljava/lang/String;J)V
    .locals 2
    .param p1, "skuType"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "futureHandle"    # J

    .prologue
    .line 978
    new-instance v0, Lcom/android/billingclient/api/BillingClientNativeCallback;

    invoke-direct {v0, p2, p3}, Lcom/android/billingclient/api/BillingClientNativeCallback;-><init>(J)V

    invoke-virtual {p0, p1, v0}, Lcom/android/billingclient/api/BillingClientImpl;->queryPurchaseHistoryAsync(Ljava/lang/String;Lcom/android/billingclient/api/PurchaseHistoryResponseListener;)V

    .line 979
    return-void
.end method

.method private queryPurchaseHistoryInternal(Ljava/lang/String;)Lcom/android/billingclient/api/BillingClientImpl$PurchaseHistoryResult;
    .locals 19
    .param p1, "skuType"    # Ljava/lang/String;

    .prologue
    .line 901
    const-string v1, "BillingClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Querying purchase history, item type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/billingclient/util/BillingHelper;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    const/4 v5, 0x0

    .line 904
    .local v5, "continueToken":Ljava/lang/String;
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 905
    .local v15, "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/android/billingclient/api/PurchaseHistoryRecord;>;"
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/billingclient/api/BillingClientImpl;->mIABv9Supported:Z

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/billingclient/api/BillingClientImpl;->mEnablePendingPurchases:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/billingclient/api/BillingClientImpl;->mQualifiedVersionNumber:Ljava/lang/String;

    .line 906
    invoke-static {v1, v2, v3}, Lcom/android/billingclient/util/BillingHelper;->constructExtraParamsForQueryPurchases(ZZLjava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 913
    .local v6, "extraParams":Landroid/os/Bundle;
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/billingclient/api/BillingClientImpl;->mIABv6Supported:Z

    if-nez v1, :cond_1

    .line 914
    const-string v1, "BillingClient"

    const-string v2, "getPurchaseHistory is not supported on current device"

    invoke-static {v1, v2}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    new-instance v1, Lcom/android/billingclient/api/BillingClientImpl$PurchaseHistoryResult;

    sget-object v2, Lcom/android/billingclient/api/BillingResults;->GET_PURCHASE_HISTORY_NOT_SUPPORTED:Lcom/android/billingclient/api/BillingResult;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/billingclient/api/BillingClientImpl$PurchaseHistoryResult;-><init>(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    .line 972
    :goto_0
    return-object v1

    .line 919
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/billingclient/api/BillingClientImpl;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v2, 0x6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/billingclient/api/BillingClientImpl;->mApplicationContext:Landroid/content/Context;

    .line 922
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, p1

    .line 920
    invoke-interface/range {v1 .. v6}, Lcom/android/vending/billing/IInAppBillingService;->getPurchaseHistory(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 933
    .local v14, "purchasedItems":Landroid/os/Bundle;
    const-string v1, "BillingClient"

    const-string v2, "getPurchaseHistory()"

    .line 934
    invoke-static {v14, v1, v2}, Lcom/android/billingclient/api/PurchaseApiResponseChecker;->checkPurchasesBundleValidity(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v7

    .line 935
    .local v7, "billingResult":Lcom/android/billingclient/api/BillingResult;
    sget-object v1, Lcom/android/billingclient/api/BillingResults;->OK:Lcom/android/billingclient/api/BillingResult;

    if-eq v7, v1, :cond_2

    .line 936
    new-instance v1, Lcom/android/billingclient/api/BillingClientImpl$PurchaseHistoryResult;

    const/4 v2, 0x0

    invoke-direct {v1, v7, v2}, Lcom/android/billingclient/api/BillingClientImpl$PurchaseHistoryResult;-><init>(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    goto :goto_0

    .line 926
    .end local v7    # "billingResult":Lcom/android/billingclient/api/BillingResult;
    .end local v14    # "purchasedItems":Landroid/os/Bundle;
    :catch_0
    move-exception v8

    .line 927
    .local v8, "e":Landroid/os/RemoteException;
    const-string v1, "BillingClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got exception trying to get purchase history: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; try to reconnect"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    new-instance v1, Lcom/android/billingclient/api/BillingClientImpl$PurchaseHistoryResult;

    sget-object v2, Lcom/android/billingclient/api/BillingResults;->SERVICE_DISCONNECTED:Lcom/android/billingclient/api/BillingResult;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/billingclient/api/BillingClientImpl$PurchaseHistoryResult;-><init>(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    goto :goto_0

    .line 939
    .end local v8    # "e":Landroid/os/RemoteException;
    .restart local v7    # "billingResult":Lcom/android/billingclient/api/BillingResult;
    .restart local v14    # "purchasedItems":Landroid/os/Bundle;
    :cond_2
    const-string v1, "INAPP_PURCHASE_ITEM_LIST"

    .line 940
    invoke-virtual {v14, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 941
    .local v10, "ownedSkus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "INAPP_PURCHASE_DATA_LIST"

    .line 942
    invoke-virtual {v14, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    .line 943
    .local v12, "purchaseDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "INAPP_DATA_SIGNATURE_LIST"

    .line 944
    invoke-virtual {v14, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v17

    .line 946
    .local v17, "signatureList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v9, v1, :cond_4

    .line 947
    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 948
    .local v11, "purchaseData":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 949
    .local v16, "signature":Ljava/lang/String;
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 951
    .local v18, "sku":Ljava/lang/String;
    const-string v1, "BillingClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Purchase record found for sku : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/billingclient/util/BillingHelper;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    :try_start_1
    new-instance v13, Lcom/android/billingclient/api/PurchaseHistoryRecord;

    move-object/from16 v0, v16

    invoke-direct {v13, v11, v0}, Lcom/android/billingclient/api/PurchaseHistoryRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 961
    .local v13, "purchaseHistoryRecord":Lcom/android/billingclient/api/PurchaseHistoryRecord;
    invoke-virtual {v13}, Lcom/android/billingclient/api/PurchaseHistoryRecord;->getPurchaseToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 962
    const-string v1, "BillingClient"

    const-string v2, "BUG: empty/null token!"

    invoke-static {v1, v2}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    :cond_3
    invoke-interface {v15, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 946
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 955
    .end local v13    # "purchaseHistoryRecord":Lcom/android/billingclient/api/PurchaseHistoryRecord;
    :catch_1
    move-exception v8

    .line 956
    .local v8, "e":Lorg/json/JSONException;
    const-string v1, "BillingClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got an exception trying to decode the purchase: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    new-instance v1, Lcom/android/billingclient/api/BillingClientImpl$PurchaseHistoryResult;

    sget-object v2, Lcom/android/billingclient/api/BillingResults;->INTERNAL_ERROR:Lcom/android/billingclient/api/BillingResult;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/billingclient/api/BillingClientImpl$PurchaseHistoryResult;-><init>(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    goto/16 :goto_0

    .line 968
    .end local v8    # "e":Lorg/json/JSONException;
    .end local v11    # "purchaseData":Ljava/lang/String;
    .end local v16    # "signature":Ljava/lang/String;
    .end local v18    # "sku":Ljava/lang/String;
    :cond_4
    const-string v1, "INAPP_CONTINUATION_TOKEN"

    invoke-virtual {v14, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 969
    const-string v1, "BillingClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Continuation token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/billingclient/util/BillingHelper;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 972
    new-instance v1, Lcom/android/billingclient/api/BillingClientImpl$PurchaseHistoryResult;

    sget-object v2, Lcom/android/billingclient/api/BillingResults;->OK:Lcom/android/billingclient/api/BillingResult;

    invoke-direct {v1, v2, v15}, Lcom/android/billingclient/api/BillingClientImpl$PurchaseHistoryResult;-><init>(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    goto/16 :goto_0
.end method

.method private queryPurchases(Ljava/lang/String;J)V
    .locals 8
    .param p1, "skuType"    # Ljava/lang/String;
    .param p2, "futureHandle"    # J

    .prologue
    const/4 v6, 0x0

    .line 709
    new-instance v0, Lcom/android/billingclient/api/BillingClientNativeCallback;

    invoke-direct {v0, p2, p3}, Lcom/android/billingclient/api/BillingClientNativeCallback;-><init>(J)V

    .line 710
    .local v0, "callback":Lcom/android/billingclient/api/BillingClientNativeCallback;
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl;->isReady()Z

    move-result v2

    if-nez v2, :cond_0

    .line 711
    sget-object v2, Lcom/android/billingclient/api/BillingResults;->SERVICE_DISCONNECTED:Lcom/android/billingclient/api/BillingResult;

    invoke-virtual {v0, v2, v6}, Lcom/android/billingclient/api/BillingClientNativeCallback;->onQueryPurchasesResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    .line 714
    :cond_0
    new-instance v2, Lcom/android/billingclient/api/BillingClientImpl$8;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/billingclient/api/BillingClientImpl$8;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Ljava/lang/String;Lcom/android/billingclient/api/BillingClientNativeCallback;)V

    const-wide/16 v4, 0x7530

    new-instance v3, Lcom/android/billingclient/api/BillingClientImpl$9;

    invoke-direct {v3, p0, v0}, Lcom/android/billingclient/api/BillingClientImpl$9;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/BillingClientNativeCallback;)V

    .line 715
    invoke-direct {p0, v2, v4, v5, v3}, Lcom/android/billingclient/api/BillingClientImpl;->executeAsync(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 741
    .local v1, "result":Ljava/util/concurrent/Future;
    if-nez v1, :cond_1

    .line 743
    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClientImpl;->getBillingResultForNullFutureResult()Lcom/android/billingclient/api/BillingResult;

    move-result-object v2

    .line 742
    invoke-virtual {v0, v2, v6}, Lcom/android/billingclient/api/BillingClientNativeCallback;->onQueryPurchasesResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    .line 745
    :cond_1
    return-void
.end method

.method private queryPurchasesInternal(Ljava/lang/String;)Lcom/android/billingclient/api/Purchase$PurchasesResult;
    .locals 19
    .param p1, "skuType"    # Ljava/lang/String;

    .prologue
    .line 1335
    const-string v1, "BillingClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Querying owned items, item type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/billingclient/util/BillingHelper;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1337
    const/4 v5, 0x0

    .line 1338
    .local v5, "continueToken":Ljava/lang/String;
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1340
    .local v15, "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/android/billingclient/api/Purchase;>;"
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/billingclient/api/BillingClientImpl;->mIABv9Supported:Z

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/billingclient/api/BillingClientImpl;->mEnablePendingPurchases:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/billingclient/api/BillingClientImpl;->mQualifiedVersionNumber:Ljava/lang/String;

    .line 1341
    invoke-static {v1, v2, v3}, Lcom/android/billingclient/util/BillingHelper;->constructExtraParamsForQueryPurchases(ZZLjava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 1347
    .local v6, "extraParams":Landroid/os/Bundle;
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/billingclient/api/BillingClientImpl;->mIABv9Supported:Z

    if-eqz v1, :cond_1

    .line 1348
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/billingclient/api/BillingClientImpl;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/16 v2, 0x9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/billingclient/api/BillingClientImpl;->mApplicationContext:Landroid/content/Context;

    .line 1351
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, p1

    .line 1349
    invoke-interface/range {v1 .. v6}, Lcom/android/vending/billing/IInAppBillingService;->getPurchasesExtraParams(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 1371
    .local v10, "ownedItems":Landroid/os/Bundle;
    :goto_0
    const-string v1, "BillingClient"

    const-string v2, "getPurchase()"

    invoke-static {v10, v1, v2}, Lcom/android/billingclient/api/PurchaseApiResponseChecker;->checkPurchasesBundleValidity(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v7

    .line 1372
    .local v7, "billingResult":Lcom/android/billingclient/api/BillingResult;
    sget-object v1, Lcom/android/billingclient/api/BillingResults;->OK:Lcom/android/billingclient/api/BillingResult;

    if-eq v7, v1, :cond_2

    .line 1373
    new-instance v1, Lcom/android/billingclient/api/Purchase$PurchasesResult;

    const/4 v2, 0x0

    invoke-direct {v1, v7, v2}, Lcom/android/billingclient/api/Purchase$PurchasesResult;-><init>(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    .line 1409
    .end local v7    # "billingResult":Lcom/android/billingclient/api/BillingResult;
    .end local v10    # "ownedItems":Landroid/os/Bundle;
    :goto_1
    return-object v1

    .line 1356
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/billingclient/api/BillingClientImpl;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/billingclient/api/BillingClientImpl;->mApplicationContext:Landroid/content/Context;

    .line 1358
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1357
    move-object/from16 v0, p1

    invoke-interface {v1, v2, v3, v0, v5}, Lcom/android/vending/billing/IInAppBillingService;->getPurchases(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v10

    .restart local v10    # "ownedItems":Landroid/os/Bundle;
    goto :goto_0

    .line 1361
    .end local v10    # "ownedItems":Landroid/os/Bundle;
    :catch_0
    move-exception v8

    .line 1363
    .local v8, "e":Ljava/lang/Exception;
    const-string v1, "BillingClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got exception trying to get purchases: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; try to reconnect"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1365
    new-instance v1, Lcom/android/billingclient/api/Purchase$PurchasesResult;

    sget-object v2, Lcom/android/billingclient/api/BillingResults;->SERVICE_DISCONNECTED:Lcom/android/billingclient/api/BillingResult;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/billingclient/api/Purchase$PurchasesResult;-><init>(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    goto :goto_1

    .line 1376
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v7    # "billingResult":Lcom/android/billingclient/api/BillingResult;
    .restart local v10    # "ownedItems":Landroid/os/Bundle;
    :cond_2
    const-string v1, "INAPP_PURCHASE_ITEM_LIST"

    .line 1377
    invoke-virtual {v10, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    .line 1378
    .local v11, "ownedSkus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "INAPP_PURCHASE_DATA_LIST"

    .line 1379
    invoke-virtual {v10, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v14

    .line 1380
    .local v14, "purchaseDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "INAPP_DATA_SIGNATURE_LIST"

    .line 1381
    invoke-virtual {v10, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v17

    .line 1383
    .local v17, "signatureList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v9, v1, :cond_4

    .line 1384
    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 1385
    .local v13, "purchaseData":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 1386
    .local v16, "signature":Ljava/lang/String;
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 1388
    .local v18, "sku":Ljava/lang/String;
    const-string v1, "BillingClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sku is owned: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/billingclient/util/BillingHelper;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1391
    :try_start_2
    new-instance v12, Lcom/android/billingclient/api/Purchase;

    move-object/from16 v0, v16

    invoke-direct {v12, v13, v0}, Lcom/android/billingclient/api/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1398
    .local v12, "purchase":Lcom/android/billingclient/api/Purchase;
    invoke-virtual {v12}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1399
    const-string v1, "BillingClient"

    const-string v2, "BUG: empty/null token!"

    invoke-static {v1, v2}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1402
    :cond_3
    invoke-interface {v15, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1383
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1392
    .end local v12    # "purchase":Lcom/android/billingclient/api/Purchase;
    :catch_1
    move-exception v8

    .line 1394
    .local v8, "e":Lorg/json/JSONException;
    const-string v1, "BillingClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got an exception trying to decode the purchase: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1395
    new-instance v1, Lcom/android/billingclient/api/Purchase$PurchasesResult;

    sget-object v2, Lcom/android/billingclient/api/BillingResults;->INTERNAL_ERROR:Lcom/android/billingclient/api/BillingResult;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/billingclient/api/Purchase$PurchasesResult;-><init>(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    goto/16 :goto_1

    .line 1405
    .end local v8    # "e":Lorg/json/JSONException;
    .end local v13    # "purchaseData":Ljava/lang/String;
    .end local v16    # "signature":Ljava/lang/String;
    .end local v18    # "sku":Ljava/lang/String;
    :cond_4
    const-string v1, "INAPP_CONTINUATION_TOKEN"

    invoke-virtual {v10, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1406
    const-string v1, "BillingClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Continuation token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/billingclient/util/BillingHelper;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1407
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1409
    new-instance v1, Lcom/android/billingclient/api/Purchase$PurchasesResult;

    sget-object v2, Lcom/android/billingclient/api/BillingResults;->OK:Lcom/android/billingclient/api/BillingResult;

    invoke-direct {v1, v2, v15}, Lcom/android/billingclient/api/Purchase$PurchasesResult;-><init>(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    goto/16 :goto_1
.end method

.method private querySkuDetailsAsync(Ljava/lang/String;[Ljava/lang/String;J)V
    .locals 3
    .param p1, "skuType"    # Ljava/lang/String;
    .param p2, "skusList"    # [Ljava/lang/String;
    .param p3, "futureHandle"    # J

    .prologue
    .line 812
    .line 813
    invoke-static {}, Lcom/android/billingclient/api/SkuDetailsParams;->newBuilder()Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->setType(Ljava/lang/String;)Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    move-result-object v0

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->setSkusList(Ljava/util/List;)Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->build()Lcom/android/billingclient/api/SkuDetailsParams;

    move-result-object v0

    new-instance v1, Lcom/android/billingclient/api/BillingClientNativeCallback;

    invoke-direct {v1, p3, p4}, Lcom/android/billingclient/api/BillingClientNativeCallback;-><init>(J)V

    .line 812
    invoke-virtual {p0, v0, v1}, Lcom/android/billingclient/api/BillingClientImpl;->querySkuDetailsAsync(Lcom/android/billingclient/api/SkuDetailsParams;Lcom/android/billingclient/api/SkuDetailsResponseListener;)V

    .line 815
    return-void
.end method

.method private startConnection(J)V
    .locals 1
    .param p1, "futureHandle"    # J

    .prologue
    .line 351
    new-instance v0, Lcom/android/billingclient/api/BillingClientNativeCallback;

    invoke-direct {v0, p1, p2}, Lcom/android/billingclient/api/BillingClientNativeCallback;-><init>(J)V

    invoke-virtual {p0, v0}, Lcom/android/billingclient/api/BillingClientImpl;->startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)V

    .line 352
    return-void
.end method


# virtual methods
.method public acknowledgePurchase(Lcom/android/billingclient/api/AcknowledgePurchaseParams;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)V
    .locals 5
    .param p1, "acknowledgePurchaseParams"    # Lcom/android/billingclient/api/AcknowledgePurchaseParams;
    .param p2, "listener"    # Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;

    .prologue
    .line 1062
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl;->isReady()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1063
    sget-object v1, Lcom/android/billingclient/api/BillingResults;->SERVICE_DISCONNECTED:Lcom/android/billingclient/api/BillingResult;

    invoke-interface {p2, v1}, Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;->onAcknowledgePurchaseResponse(Lcom/android/billingclient/api/BillingResult;)V

    .line 1137
    :cond_0
    :goto_0
    return-void

    .line 1068
    :cond_1
    invoke-virtual {p1}, Lcom/android/billingclient/api/AcknowledgePurchaseParams;->getPurchaseToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1069
    const-string v1, "BillingClient"

    const-string v2, "Please provide a valid purchase token."

    invoke-static {v1, v2}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1070
    sget-object v1, Lcom/android/billingclient/api/BillingResults;->INVALID_PURCHASE_TOKEN:Lcom/android/billingclient/api/BillingResult;

    invoke-interface {p2, v1}, Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;->onAcknowledgePurchaseResponse(Lcom/android/billingclient/api/BillingResult;)V

    goto :goto_0

    .line 1074
    :cond_2
    iget-boolean v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->mIABv9Supported:Z

    if-nez v1, :cond_3

    .line 1075
    sget-object v1, Lcom/android/billingclient/api/BillingResults;->API_VERSION_NOT_V9:Lcom/android/billingclient/api/BillingResult;

    invoke-interface {p2, v1}, Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;->onAcknowledgePurchaseResponse(Lcom/android/billingclient/api/BillingResult;)V

    goto :goto_0

    .line 1079
    :cond_3
    new-instance v1, Lcom/android/billingclient/api/BillingClientImpl$18;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/billingclient/api/BillingClientImpl$18;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/AcknowledgePurchaseParams;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)V

    const-wide/16 v2, 0x7530

    new-instance v4, Lcom/android/billingclient/api/BillingClientImpl$19;

    invoke-direct {v4, p0, p2}, Lcom/android/billingclient/api/BillingClientImpl$19;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)V

    .line 1080
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/billingclient/api/BillingClientImpl;->executeAsync(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 1134
    .local v0, "futureAcknowledgePurchase":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    if-nez v0, :cond_0

    .line 1135
    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClientImpl;->getBillingResultForNullFutureResult()Lcom/android/billingclient/api/BillingResult;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;->onAcknowledgePurchaseResponse(Lcom/android/billingclient/api/BillingResult;)V

    goto :goto_0
.end method

.method public consumeAsync(Lcom/android/billingclient/api/ConsumeParams;Lcom/android/billingclient/api/ConsumeResponseListener;)V
    .locals 6
    .param p1, "consumeParams"    # Lcom/android/billingclient/api/ConsumeParams;
    .param p2, "listener"    # Lcom/android/billingclient/api/ConsumeResponseListener;

    .prologue
    const/4 v5, 0x0

    .line 820
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl;->isReady()Z

    move-result v1

    if-nez v1, :cond_1

    .line 821
    sget-object v1, Lcom/android/billingclient/api/BillingResults;->SERVICE_DISCONNECTED:Lcom/android/billingclient/api/BillingResult;

    invoke-interface {p2, v1, v5}, Lcom/android/billingclient/api/ConsumeResponseListener;->onConsumeResponse(Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    .line 845
    :cond_0
    :goto_0
    return-void

    .line 825
    :cond_1
    new-instance v1, Lcom/android/billingclient/api/BillingClientImpl$12;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/billingclient/api/BillingClientImpl$12;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/ConsumeParams;Lcom/android/billingclient/api/ConsumeResponseListener;)V

    const-wide/16 v2, 0x7530

    new-instance v4, Lcom/android/billingclient/api/BillingClientImpl$13;

    invoke-direct {v4, p0, p2}, Lcom/android/billingclient/api/BillingClientImpl$13;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/ConsumeResponseListener;)V

    .line 826
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/billingclient/api/BillingClientImpl;->executeAsync(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 842
    .local v0, "result":Ljava/util/concurrent/Future;
    if-nez v0, :cond_0

    .line 843
    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClientImpl;->getBillingResultForNullFutureResult()Lcom/android/billingclient/api/BillingResult;

    move-result-object v1

    invoke-interface {p2, v1, v5}, Lcom/android/billingclient/api/ConsumeResponseListener;->onConsumeResponse(Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public endConnection()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 357
    :try_start_0
    iget-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->mBroadcastManager:Lcom/android/billingclient/api/BillingBroadcastManager;

    invoke-virtual {v1}, Lcom/android/billingclient/api/BillingBroadcastManager;->destroy()V

    .line 358
    iget-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->mServiceConnection:Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;

    if-eqz v1, :cond_0

    .line 359
    iget-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->mServiceConnection:Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;

    invoke-virtual {v1}, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->markDisconnectedAndCleanUp()V

    .line 361
    :cond_0
    iget-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->mServiceConnection:Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->mService:Lcom/android/vending/billing/IInAppBillingService;

    if-eqz v1, :cond_1

    .line 362
    const-string v1, "BillingClient"

    const-string v2, "Unbinding from service."

    invoke-static {v1, v2}, Lcom/android/billingclient/util/BillingHelper;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    iget-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->mApplicationContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/billingclient/api/BillingClientImpl;->mServiceConnection:Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 364
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->mServiceConnection:Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;

    .line 366
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->mService:Lcom/android/vending/billing/IInAppBillingService;

    .line 367
    iget-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_2

    .line 368
    iget-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 369
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->mExecutorService:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 376
    :cond_2
    iput v4, p0, Lcom/android/billingclient/api/BillingClientImpl;->mClientState:I

    .line 378
    :goto_0
    return-void

    .line 372
    :catch_0
    move-exception v0

    .line 374
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string v1, "BillingClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "There was an exception while ending connection: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 376
    iput v4, p0, Lcom/android/billingclient/api/BillingClientImpl;->mClientState:I

    goto :goto_0

    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    iput v4, p0, Lcom/android/billingclient/api/BillingClientImpl;->mClientState:I

    .line 377
    throw v1
.end method

.method public isFeatureSupported(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult;
    .locals 3
    .param p1, "feature"    # Ljava/lang/String;

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 240
    sget-object v0, Lcom/android/billingclient/api/BillingResults;->SERVICE_DISCONNECTED:Lcom/android/billingclient/api/BillingResult;

    .line 263
    :goto_0
    return-object v0

    .line 243
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 262
    const-string v0, "BillingClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported feature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    sget-object v0, Lcom/android/billingclient/api/BillingResults;->UNKNOWN_FEATURE:Lcom/android/billingclient/api/BillingResult;

    goto :goto_0

    .line 243
    :sswitch_0
    const-string/jumbo v1, "subscriptions"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v1, "subscriptionsUpdate"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string v1, "inAppItemsOnVr"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v1, "subscriptionsOnVr"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_4
    const-string/jumbo v1, "priceChangeConfirmation"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x4

    goto :goto_1

    .line 245
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->mSubscriptionsSupported:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/billingclient/api/BillingResults;->OK:Lcom/android/billingclient/api/BillingResult;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/billingclient/api/BillingResults;->FEATURE_NOT_SUPPORTED:Lcom/android/billingclient/api/BillingResult;

    goto :goto_0

    .line 248
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->mSubscriptionUpdateSupported:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/billingclient/api/BillingResults;->OK:Lcom/android/billingclient/api/BillingResult;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/android/billingclient/api/BillingResults;->FEATURE_NOT_SUPPORTED:Lcom/android/billingclient/api/BillingResult;

    goto :goto_0

    .line 253
    :pswitch_2
    const-string v0, "inapp"

    invoke-direct {p0, v0}, Lcom/android/billingclient/api/BillingClientImpl;->isBillingSupportedOnVr(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    goto :goto_0

    .line 256
    :pswitch_3
    const-string/jumbo v0, "subs"

    invoke-direct {p0, v0}, Lcom/android/billingclient/api/BillingClientImpl;->isBillingSupportedOnVr(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    goto :goto_0

    .line 259
    :pswitch_4
    iget-boolean v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->mIABv8Supported:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/billingclient/api/BillingResults;->OK:Lcom/android/billingclient/api/BillingResult;

    goto/16 :goto_0

    :cond_4
    sget-object v0, Lcom/android/billingclient/api/BillingResults;->FEATURE_NOT_SUPPORTED:Lcom/android/billingclient/api/BillingResult;

    goto/16 :goto_0

    .line 243
    :sswitch_data_0
    .sparse-switch
        -0x1928a0a1 -> :sswitch_1
        0xc5ff92e -> :sswitch_4
        0x116ae57f -> :sswitch_2
        0x48aff111 -> :sswitch_3
        0x7674caf6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public isReady()Z
    .locals 2

    .prologue
    .line 269
    iget v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->mClientState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->mService:Lcom/android/vending/billing/IInAppBillingService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->mServiceConnection:Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public launchBillingFlow(Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;)Lcom/android/billingclient/api/BillingResult;
    .locals 26
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "params"    # Lcom/android/billingclient/api/BillingFlowParams;

    .prologue
    .line 497
    invoke-virtual/range {p0 .. p0}, Lcom/android/billingclient/api/BillingClientImpl;->isReady()Z

    move-result v4

    if-nez v4, :cond_0

    .line 498
    sget-object v4, Lcom/android/billingclient/api/BillingResults;->SERVICE_DISCONNECTED:Lcom/android/billingclient/api/BillingResult;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/billingclient/api/BillingClientImpl;->broadcastFailureAndReturnBillingResponse(Lcom/android/billingclient/api/BillingResult;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v4

    .line 664
    :goto_0
    return-object v4

    .line 501
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/BillingFlowParams;->getSkuType()Ljava/lang/String;

    move-result-object v8

    .line 502
    .local v8, "skuType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/BillingFlowParams;->getSku()Ljava/lang/String;

    move-result-object v7

    .line 503
    .local v7, "newSku":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/BillingFlowParams;->getSkuDetails()Lcom/android/billingclient/api/SkuDetails;

    move-result-object v23

    .line 504
    .local v23, "skuDetails":Lcom/android/billingclient/api/SkuDetails;
    if-eqz v23, :cond_1

    invoke-virtual/range {v23 .. v23}, Lcom/android/billingclient/api/SkuDetails;->isRewarded()Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v22, 0x1

    .line 507
    .local v22, "rewardedSku":Z
    :goto_1
    if-nez v7, :cond_2

    .line 508
    const-string v4, "BillingClient"

    const-string v5, "Please fix the input params. SKU can\'t be null."

    invoke-static {v4, v5}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    sget-object v4, Lcom/android/billingclient/api/BillingResults;->NULL_SKU:Lcom/android/billingclient/api/BillingResult;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/billingclient/api/BillingClientImpl;->broadcastFailureAndReturnBillingResponse(Lcom/android/billingclient/api/BillingResult;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v4

    goto :goto_0

    .line 504
    .end local v22    # "rewardedSku":Z
    :cond_1
    const/16 v22, 0x0

    goto :goto_1

    .line 512
    .restart local v22    # "rewardedSku":Z
    :cond_2
    if-nez v8, :cond_3

    .line 513
    const-string v4, "BillingClient"

    const-string v5, "Please fix the input params. SkuType can\'t be null."

    invoke-static {v4, v5}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    sget-object v4, Lcom/android/billingclient/api/BillingResults;->NULL_SKU_TYPE:Lcom/android/billingclient/api/BillingResult;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/billingclient/api/BillingClientImpl;->broadcastFailureAndReturnBillingResponse(Lcom/android/billingclient/api/BillingResult;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v4

    goto :goto_0

    .line 518
    :cond_3
    const-string/jumbo v4, "subs"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/billingclient/api/BillingClientImpl;->mSubscriptionsSupported:Z

    if-nez v4, :cond_4

    .line 519
    const-string v4, "BillingClient"

    const-string v5, "Current client doesn\'t support subscriptions."

    invoke-static {v4, v5}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    sget-object v4, Lcom/android/billingclient/api/BillingResults;->SUBSCRIPTIONS_NOT_SUPPORTED:Lcom/android/billingclient/api/BillingResult;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/billingclient/api/BillingClientImpl;->broadcastFailureAndReturnBillingResponse(Lcom/android/billingclient/api/BillingResult;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v4

    goto :goto_0

    .line 523
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/BillingFlowParams;->getOldSku()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    const/16 v18, 0x1

    .line 525
    .local v18, "isSubscriptionUpdate":Z
    :goto_2
    if-eqz v18, :cond_6

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/billingclient/api/BillingClientImpl;->mSubscriptionUpdateSupported:Z

    if-nez v4, :cond_6

    .line 526
    const-string v4, "BillingClient"

    const-string v5, "Current client doesn\'t support subscriptions update."

    invoke-static {v4, v5}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    sget-object v4, Lcom/android/billingclient/api/BillingResults;->SUBSCRIPTIONS_UPDATE_NOT_SUPPORTED:Lcom/android/billingclient/api/BillingResult;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/billingclient/api/BillingClientImpl;->broadcastFailureAndReturnBillingResponse(Lcom/android/billingclient/api/BillingResult;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v4

    goto :goto_0

    .line 523
    .end local v18    # "isSubscriptionUpdate":Z
    :cond_5
    const/16 v18, 0x0

    goto :goto_2

    .line 531
    .restart local v18    # "isSubscriptionUpdate":Z
    :cond_6
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/BillingFlowParams;->hasExtraParams()Z

    move-result v4

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/billingclient/api/BillingClientImpl;->mIABv6Supported:Z

    if-nez v4, :cond_7

    .line 532
    const-string v4, "BillingClient"

    const-string v5, "Current client doesn\'t support extra params for buy intent."

    invoke-static {v4, v5}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    sget-object v4, Lcom/android/billingclient/api/BillingResults;->EXTRA_PARAMS_NOT_SUPPORTED:Lcom/android/billingclient/api/BillingResult;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/billingclient/api/BillingClientImpl;->broadcastFailureAndReturnBillingResponse(Lcom/android/billingclient/api/BillingResult;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v4

    goto/16 :goto_0

    .line 536
    :cond_7
    if-eqz v22, :cond_8

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/billingclient/api/BillingClientImpl;->mIABv6Supported:Z

    if-nez v4, :cond_8

    .line 537
    const-string v4, "BillingClient"

    const-string v5, "Current client doesn\'t support extra params for buy intent."

    invoke-static {v4, v5}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    sget-object v4, Lcom/android/billingclient/api/BillingResults;->EXTRA_PARAMS_NOT_SUPPORTED:Lcom/android/billingclient/api/BillingResult;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/billingclient/api/BillingClientImpl;->broadcastFailureAndReturnBillingResponse(Lcom/android/billingclient/api/BillingResult;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v4

    goto/16 :goto_0

    .line 541
    :cond_8
    const-string v4, "BillingClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Constructing buy intent for "

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v24, ", item type: "

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/billingclient/util/BillingHelper;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/billingclient/api/BillingClientImpl;->mIABv6Supported:Z

    if-eqz v4, :cond_e

    .line 547
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/billingclient/api/BillingClientImpl;->mIABv9Supported:Z

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/billingclient/api/BillingClientImpl;->mEnablePendingPurchases:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/billingclient/api/BillingClientImpl;->mQualifiedVersionNumber:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 548
    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-static {v0, v4, v5, v1}, Lcom/android/billingclient/util/BillingHelper;->constructExtraParamsForLaunchBillingFlow(Lcom/android/billingclient/api/BillingFlowParams;ZZLjava/lang/String;)Landroid/os/Bundle;

    move-result-object v15

    .line 551
    .local v15, "extraParams":Landroid/os/Bundle;
    invoke-virtual/range {v23 .. v23}, Lcom/android/billingclient/api/SkuDetails;->getSkuDetailsToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    .line 552
    const-string/jumbo v4, "skuDetailsToken"

    .line 553
    invoke-virtual/range {v23 .. v23}, Lcom/android/billingclient/api/SkuDetails;->getSkuDetailsToken()Ljava/lang/String;

    move-result-object v5

    .line 552
    invoke-virtual {v15, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    :cond_9
    if-eqz v22, :cond_b

    .line 557
    const-string/jumbo v4, "rewardToken"

    invoke-virtual/range {v23 .. v23}, Lcom/android/billingclient/api/SkuDetails;->rewardToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/billingclient/api/BillingClientImpl;->mChildDirected:I

    if-eqz v4, :cond_a

    .line 559
    const-string v4, "childDirected"

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/billingclient/api/BillingClientImpl;->mChildDirected:I

    invoke-virtual {v15, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 561
    :cond_a
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/billingclient/api/BillingClientImpl;->mUnderAgeOfConsent:I

    if-eqz v4, :cond_b

    .line 562
    const-string/jumbo v4, "underAgeOfConsent"

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/billingclient/api/BillingClientImpl;->mUnderAgeOfConsent:I

    invoke-virtual {v15, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 566
    :cond_b
    move-object v9, v15

    .line 567
    .local v9, "extraParamsFinal":Landroid/os/Bundle;
    const/4 v10, 0x6

    .line 568
    .local v10, "apiVersion":I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/billingclient/api/BillingClientImpl;->mIABv9Supported:Z

    if-eqz v4, :cond_d

    .line 569
    const/16 v10, 0x9

    .line 573
    :cond_c
    :goto_3
    move v6, v10

    .line 574
    .local v6, "finalApiVersion":I
    new-instance v4, Lcom/android/billingclient/api/BillingClientImpl$4;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/billingclient/api/BillingClientImpl$4;-><init>(Lcom/android/billingclient/api/BillingClientImpl;ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    const-wide/16 v24, 0x1388

    const/4 v5, 0x0

    .line 575
    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-direct {v0, v4, v1, v2, v5}, Lcom/android/billingclient/api/BillingClientImpl;->executeAsync(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v16

    .line 626
    .end local v6    # "finalApiVersion":I
    .end local v9    # "extraParamsFinal":Landroid/os/Bundle;
    .end local v10    # "apiVersion":I
    .end local v15    # "extraParams":Landroid/os/Bundle;
    .local v16, "futureBuyIntentBundle":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Landroid/os/Bundle;>;"
    :goto_4
    const-wide/16 v4, 0x1388

    :try_start_0
    sget-object v24, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 627
    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-interface {v0, v4, v5, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/Bundle;

    .line 628
    .local v12, "buyIntentBundle":Landroid/os/Bundle;
    const-string v4, "BillingClient"

    invoke-static {v12, v4}, Lcom/android/billingclient/util/BillingHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v21

    .line 629
    .local v21, "responseCode":I
    const-string v4, "BillingClient"

    invoke-static {v12, v4}, Lcom/android/billingclient/util/BillingHelper;->getDebugMessageFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 630
    .local v13, "debugMessage":Ljava/lang/String;
    if-eqz v21, :cond_10

    .line 631
    const-string v4, "BillingClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Unable to buy item, Error response code: "

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->newBuilder()Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object v4

    .line 634
    move/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/android/billingclient/api/BillingResult$Builder;->setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object v4

    .line 635
    invoke-virtual {v4, v13}, Lcom/android/billingclient/api/BillingResult$Builder;->setDebugMessage(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object v4

    .line 636
    invoke-virtual {v4}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    move-result-object v11

    .line 637
    .local v11, "billingResult":Lcom/android/billingclient/api/BillingResult;
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/billingclient/api/BillingClientImpl;->broadcastFailureAndReturnBillingResponse(Lcom/android/billingclient/api/BillingResult;)Lcom/android/billingclient/api/BillingResult;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    goto/16 :goto_0

    .line 570
    .end local v11    # "billingResult":Lcom/android/billingclient/api/BillingResult;
    .end local v12    # "buyIntentBundle":Landroid/os/Bundle;
    .end local v13    # "debugMessage":Ljava/lang/String;
    .end local v16    # "futureBuyIntentBundle":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Landroid/os/Bundle;>;"
    .end local v21    # "responseCode":I
    .restart local v9    # "extraParamsFinal":Landroid/os/Bundle;
    .restart local v10    # "apiVersion":I
    .restart local v15    # "extraParams":Landroid/os/Bundle;
    :cond_d
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/BillingFlowParams;->getVrPurchaseFlow()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 571
    const/4 v10, 0x7

    goto :goto_3

    .line 590
    .end local v9    # "extraParamsFinal":Landroid/os/Bundle;
    .end local v10    # "apiVersion":I
    .end local v15    # "extraParams":Landroid/os/Bundle;
    :cond_e
    if-eqz v18, :cond_f

    .line 592
    new-instance v4, Lcom/android/billingclient/api/BillingClientImpl$5;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v4, v0, v1, v7}, Lcom/android/billingclient/api/BillingClientImpl$5;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/BillingFlowParams;Ljava/lang/String;)V

    const-wide/16 v24, 0x1388

    const/4 v5, 0x0

    .line 593
    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-direct {v0, v4, v1, v2, v5}, Lcom/android/billingclient/api/BillingClientImpl;->executeAsync(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v16

    .restart local v16    # "futureBuyIntentBundle":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Landroid/os/Bundle;>;"
    goto :goto_4

    .line 609
    .end local v16    # "futureBuyIntentBundle":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Landroid/os/Bundle;>;"
    :cond_f
    new-instance v4, Lcom/android/billingclient/api/BillingClientImpl$6;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v7, v8}, Lcom/android/billingclient/api/BillingClientImpl$6;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v24, 0x1388

    const/4 v5, 0x0

    .line 610
    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-direct {v0, v4, v1, v2, v5}, Lcom/android/billingclient/api/BillingClientImpl;->executeAsync(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v16

    .restart local v16    # "futureBuyIntentBundle":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Landroid/os/Bundle;>;"
    goto/16 :goto_4

    .line 640
    .restart local v12    # "buyIntentBundle":Landroid/os/Bundle;
    .restart local v13    # "debugMessage":Ljava/lang/String;
    .restart local v21    # "responseCode":I
    :cond_10
    :try_start_1
    new-instance v17, Landroid/content/Intent;

    const-class v4, Lcom/android/billingclient/api/ProxyBillingActivity;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 641
    .local v17, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "result_receiver"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/billingclient/api/BillingClientImpl;->onPurchaseFinishedReceiver:Landroid/os/ResultReceiver;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 642
    const-string v4, "BUY_INTENT"

    invoke-virtual {v12, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v20

    check-cast v20, Landroid/app/PendingIntent;

    .line 643
    .local v20, "pendingIntent":Landroid/app/PendingIntent;
    const-string v4, "BUY_INTENT"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 648
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 664
    sget-object v4, Lcom/android/billingclient/api/BillingResults;->OK:Lcom/android/billingclient/api/BillingResult;

    goto/16 :goto_0

    .line 649
    .end local v12    # "buyIntentBundle":Landroid/os/Bundle;
    .end local v13    # "debugMessage":Ljava/lang/String;
    .end local v17    # "intent":Landroid/content/Intent;
    .end local v20    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v21    # "responseCode":I
    :catch_0
    move-exception v14

    .line 650
    .local v14, "ex":Ljava/lang/Exception;
    :goto_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Time out while launching billing flow: ; for sku: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; try to reconnect"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 652
    .local v19, "msg":Ljava/lang/String;
    const-string v4, "BillingClient"

    move-object/from16 v0, v19

    invoke-static {v4, v0}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    sget-object v4, Lcom/android/billingclient/api/BillingResults;->SERVICE_TIMEOUT:Lcom/android/billingclient/api/BillingResult;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/billingclient/api/BillingClientImpl;->broadcastFailureAndReturnBillingResponse(Lcom/android/billingclient/api/BillingResult;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v4

    goto/16 :goto_0

    .line 654
    .end local v14    # "ex":Ljava/lang/Exception;
    .end local v19    # "msg":Ljava/lang/String;
    :catch_1
    move-exception v14

    .line 655
    .restart local v14    # "ex":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception while launching billing flow: ; for sku: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; try to reconnect"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 660
    .restart local v19    # "msg":Ljava/lang/String;
    const-string v4, "BillingClient"

    move-object/from16 v0, v19

    invoke-static {v4, v0}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    sget-object v4, Lcom/android/billingclient/api/BillingResults;->SERVICE_DISCONNECTED:Lcom/android/billingclient/api/BillingResult;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/billingclient/api/BillingClientImpl;->broadcastFailureAndReturnBillingResponse(Lcom/android/billingclient/api/BillingResult;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v4

    goto/16 :goto_0

    .line 649
    .end local v14    # "ex":Ljava/lang/Exception;
    .end local v19    # "msg":Ljava/lang/String;
    :catch_2
    move-exception v14

    goto :goto_5
.end method

.method public launchPriceChangeConfirmationFlow(Landroid/app/Activity;Lcom/android/billingclient/api/PriceChangeFlowParams;Lcom/android/billingclient/api/PriceChangeConfirmationListener;)V
    .locals 23
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "priceChangeFlowParams"    # Lcom/android/billingclient/api/PriceChangeFlowParams;
    .param p3, "listener"    # Lcom/android/billingclient/api/PriceChangeConfirmationListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 392
    invoke-virtual/range {p0 .. p0}, Lcom/android/billingclient/api/BillingClientImpl;->isReady()Z

    move-result v19

    if-nez v19, :cond_0

    .line 393
    sget-object v19, Lcom/android/billingclient/api/BillingResults;->SERVICE_DISCONNECTED:Lcom/android/billingclient/api/BillingResult;

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lcom/android/billingclient/api/PriceChangeConfirmationListener;->onPriceChangeConfirmationResult(Lcom/android/billingclient/api/BillingResult;)V

    .line 493
    :goto_0
    return-void

    .line 396
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/PriceChangeFlowParams;->getSkuDetails()Lcom/android/billingclient/api/SkuDetails;

    move-result-object v19

    if-nez v19, :cond_2

    .line 397
    :cond_1
    const-string v19, "BillingClient"

    const-string v20, "Please fix the input params. priceChangeFlowParams must contain valid sku."

    invoke-static/range {v19 .. v20}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    sget-object v19, Lcom/android/billingclient/api/BillingResults;->NULL_SKU:Lcom/android/billingclient/api/BillingResult;

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lcom/android/billingclient/api/PriceChangeConfirmationListener;->onPriceChangeConfirmationResult(Lcom/android/billingclient/api/BillingResult;)V

    goto :goto_0

    .line 402
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/PriceChangeFlowParams;->getSkuDetails()Lcom/android/billingclient/api/SkuDetails;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/billingclient/api/SkuDetails;->getSku()Ljava/lang/String;

    move-result-object v18

    .line 403
    .local v18, "sku":Ljava/lang/String;
    if-nez v18, :cond_3

    .line 404
    const-string v19, "BillingClient"

    const-string v20, "Please fix the input params. priceChangeFlowParams must contain valid sku."

    invoke-static/range {v19 .. v20}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    sget-object v19, Lcom/android/billingclient/api/BillingResults;->NULL_SKU:Lcom/android/billingclient/api/BillingResult;

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lcom/android/billingclient/api/PriceChangeConfirmationListener;->onPriceChangeConfirmationResult(Lcom/android/billingclient/api/BillingResult;)V

    goto :goto_0

    .line 409
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/billingclient/api/BillingClientImpl;->mIABv8Supported:Z

    move/from16 v19, v0

    if-nez v19, :cond_4

    .line 410
    const-string v19, "BillingClient"

    const-string v20, "Current client doesn\'t support price change confirmation flow."

    invoke-static/range {v19 .. v20}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    sget-object v19, Lcom/android/billingclient/api/BillingResults;->FEATURE_NOT_SUPPORTED:Lcom/android/billingclient/api/BillingResult;

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lcom/android/billingclient/api/PriceChangeConfirmationListener;->onPriceChangeConfirmationResult(Lcom/android/billingclient/api/BillingResult;)V

    goto :goto_0

    .line 415
    :cond_4
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 416
    .local v9, "extraParams":Landroid/os/Bundle;
    const-string/jumbo v19, "playBillingLibraryVersion"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/billingclient/api/BillingClientImpl;->mQualifiedVersionNumber:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    const-string/jumbo v19, "subs_price_change"

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 418
    move-object v10, v9

    .line 420
    .local v10, "extraParamsFinal":Landroid/os/Bundle;
    new-instance v19, Lcom/android/billingclient/api/BillingClientImpl$2;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2, v10}, Lcom/android/billingclient/api/BillingClientImpl$2;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Ljava/lang/String;Landroid/os/Bundle;)V

    const-wide/16 v20, 0x1388

    const/16 v22, 0x0

    .line 421
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-wide/from16 v2, v20

    move-object/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/billingclient/api/BillingClientImpl;->executeAsync(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v11

    .line 437
    .local v11, "futurePriceChangeIntentBundle":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Landroid/os/Bundle;>;"
    const-wide/16 v20, 0x1388

    :try_start_0
    sget-object v19, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 438
    move-wide/from16 v0, v20

    move-object/from16 v2, v19

    invoke-interface {v11, v0, v1, v2}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/Bundle;

    .line 441
    .local v16, "priceChangeIntentBundle":Landroid/os/Bundle;
    const-string v19, "BillingClient"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/billingclient/util/BillingHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v17

    .line 442
    .local v17, "responseCode":I
    const-string v19, "BillingClient"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/billingclient/util/BillingHelper;->getDebugMessageFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 444
    .local v7, "debugMessage":Ljava/lang/String;
    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->newBuilder()Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object v19

    .line 445
    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingResult$Builder;->setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object v19

    .line 446
    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Lcom/android/billingclient/api/BillingResult$Builder;->setDebugMessage(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object v19

    .line 447
    invoke-virtual/range {v19 .. v19}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    move-result-object v6

    .line 448
    .local v6, "billingResult":Lcom/android/billingclient/api/BillingResult;
    if-eqz v17, :cond_5

    .line 449
    const-string v19, "BillingClient"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Unable to launch price change flow, error response code: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Lcom/android/billingclient/api/PriceChangeConfirmationListener;->onPriceChangeConfirmationResult(Lcom/android/billingclient/api/BillingResult;)V
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_0

    .line 480
    .end local v6    # "billingResult":Lcom/android/billingclient/api/BillingResult;
    .end local v7    # "debugMessage":Ljava/lang/String;
    .end local v16    # "priceChangeIntentBundle":Landroid/os/Bundle;
    .end local v17    # "responseCode":I
    :catch_0
    move-exception v8

    .line 481
    .local v8, "ex":Ljava/lang/Exception;
    :goto_1
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Time out while launching Price Change Flow for sku: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "; try to reconnect"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 483
    .local v13, "msg":Ljava/lang/String;
    const-string v19, "BillingClient"

    move-object/from16 v0, v19

    invoke-static {v0, v13}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    sget-object v19, Lcom/android/billingclient/api/BillingResults;->SERVICE_TIMEOUT:Lcom/android/billingclient/api/BillingResult;

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lcom/android/billingclient/api/PriceChangeConfirmationListener;->onPriceChangeConfirmationResult(Lcom/android/billingclient/api/BillingResult;)V

    goto/16 :goto_0

    .line 455
    .end local v8    # "ex":Ljava/lang/Exception;
    .end local v13    # "msg":Ljava/lang/String;
    .restart local v6    # "billingResult":Lcom/android/billingclient/api/BillingResult;
    .restart local v7    # "debugMessage":Ljava/lang/String;
    .restart local v16    # "priceChangeIntentBundle":Landroid/os/Bundle;
    .restart local v17    # "responseCode":I
    :cond_5
    :try_start_1
    new-instance v14, Lcom/android/billingclient/api/BillingClientImpl$3;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/billingclient/api/BillingClientImpl;->mUiThreadHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p3

    invoke-direct {v14, v0, v1, v2}, Lcom/android/billingclient/api/BillingClientImpl$3;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Landroid/os/Handler;Lcom/android/billingclient/api/PriceChangeConfirmationListener;)V

    .line 470
    .local v14, "onPriceChangeConfirmationReceiver":Landroid/os/ResultReceiver;
    new-instance v12, Landroid/content/Intent;

    const-class v19, Lcom/android/billingclient/api/ProxyBillingActivity;

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-direct {v12, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 471
    .local v12, "intent":Landroid/content/Intent;
    const-string v19, "SUBS_MANAGEMENT_INTENT"

    .line 472
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v15

    check-cast v15, Landroid/app/PendingIntent;

    .line 473
    .local v15, "pendingIntent":Landroid/app/PendingIntent;
    const-string v19, "SUBS_MANAGEMENT_INTENT"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 474
    const-string/jumbo v19, "result_receiver"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 479
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    .line 480
    .end local v6    # "billingResult":Lcom/android/billingclient/api/BillingResult;
    .end local v7    # "debugMessage":Ljava/lang/String;
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v14    # "onPriceChangeConfirmationReceiver":Landroid/os/ResultReceiver;
    .end local v15    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v16    # "priceChangeIntentBundle":Landroid/os/Bundle;
    .end local v17    # "responseCode":I
    :catch_1
    move-exception v8

    goto :goto_1

    .line 485
    :catch_2
    move-exception v8

    .line 486
    .restart local v8    # "ex":Ljava/lang/Exception;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Exception caught while launching Price Change Flow for sku: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "; try to reconnect"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 490
    .restart local v13    # "msg":Ljava/lang/String;
    const-string v19, "BillingClient"

    move-object/from16 v0, v19

    invoke-static {v0, v13}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    sget-object v19, Lcom/android/billingclient/api/BillingResults;->SERVICE_DISCONNECTED:Lcom/android/billingclient/api/BillingResult;

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lcom/android/billingclient/api/PriceChangeConfirmationListener;->onPriceChangeConfirmationResult(Lcom/android/billingclient/api/BillingResult;)V

    goto/16 :goto_0
.end method

.method public loadRewardedSku(Lcom/android/billingclient/api/RewardLoadParams;Lcom/android/billingclient/api/RewardResponseListener;)V
    .locals 5
    .param p1, "params"    # Lcom/android/billingclient/api/RewardLoadParams;
    .param p2, "listener"    # Lcom/android/billingclient/api/RewardResponseListener;

    .prologue
    .line 985
    iget-boolean v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->mIABv6Supported:Z

    if-nez v1, :cond_1

    .line 986
    sget-object v1, Lcom/android/billingclient/api/BillingResults;->ITEM_UNAVAILABLE:Lcom/android/billingclient/api/BillingResult;

    invoke-interface {p2, v1}, Lcom/android/billingclient/api/RewardResponseListener;->onRewardResponse(Lcom/android/billingclient/api/BillingResult;)V

    .line 1051
    :cond_0
    :goto_0
    return-void

    .line 991
    :cond_1
    new-instance v1, Lcom/android/billingclient/api/BillingClientImpl$16;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/billingclient/api/BillingClientImpl$16;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/RewardLoadParams;Lcom/android/billingclient/api/RewardResponseListener;)V

    const-wide/16 v2, 0x7530

    new-instance v4, Lcom/android/billingclient/api/BillingClientImpl$17;

    invoke-direct {v4, p0, p2}, Lcom/android/billingclient/api/BillingClientImpl$17;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/RewardResponseListener;)V

    .line 992
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/billingclient/api/BillingClientImpl;->executeAsync(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 1048
    .local v0, "result":Ljava/util/concurrent/Future;
    if-nez v0, :cond_0

    .line 1049
    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClientImpl;->getBillingResultForNullFutureResult()Lcom/android/billingclient/api/BillingResult;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/android/billingclient/api/RewardResponseListener;->onRewardResponse(Lcom/android/billingclient/api/BillingResult;)V

    goto :goto_0
.end method

.method public queryPurchaseHistoryAsync(Ljava/lang/String;Lcom/android/billingclient/api/PurchaseHistoryResponseListener;)V
    .locals 6
    .param p1, "skuType"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/android/billingclient/api/PurchaseHistoryResponseListener;

    .prologue
    const/4 v5, 0x0

    .line 856
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl;->isReady()Z

    move-result v1

    if-nez v1, :cond_1

    .line 857
    sget-object v1, Lcom/android/billingclient/api/BillingResults;->SERVICE_DISCONNECTED:Lcom/android/billingclient/api/BillingResult;

    invoke-interface {p2, v1, v5}, Lcom/android/billingclient/api/PurchaseHistoryResponseListener;->onPurchaseHistoryResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    .line 897
    :cond_0
    :goto_0
    return-void

    .line 864
    :cond_1
    new-instance v1, Lcom/android/billingclient/api/BillingClientImpl$14;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/billingclient/api/BillingClientImpl$14;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Ljava/lang/String;Lcom/android/billingclient/api/PurchaseHistoryResponseListener;)V

    const-wide/16 v2, 0x7530

    new-instance v4, Lcom/android/billingclient/api/BillingClientImpl$15;

    invoke-direct {v4, p0, p2}, Lcom/android/billingclient/api/BillingClientImpl$15;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/PurchaseHistoryResponseListener;)V

    .line 865
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/billingclient/api/BillingClientImpl;->executeAsync(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 891
    .local v0, "result":Ljava/util/concurrent/Future;
    if-nez v0, :cond_0

    .line 893
    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClientImpl;->getBillingResultForNullFutureResult()Lcom/android/billingclient/api/BillingResult;

    move-result-object v1

    .line 892
    invoke-interface {p2, v1, v5}, Lcom/android/billingclient/api/PurchaseHistoryResponseListener;->onPurchaseHistoryResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    goto :goto_0
.end method

.method public queryPurchases(Ljava/lang/String;)Lcom/android/billingclient/api/Purchase$PurchasesResult;
    .locals 8
    .param p1, "skuType"    # Ljava/lang/String;

    .prologue
    const-wide/16 v6, 0x1388

    const/4 v5, 0x0

    .line 678
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl;->isReady()Z

    move-result v2

    if-nez v2, :cond_0

    .line 679
    new-instance v2, Lcom/android/billingclient/api/Purchase$PurchasesResult;

    sget-object v3, Lcom/android/billingclient/api/BillingResults;->SERVICE_DISCONNECTED:Lcom/android/billingclient/api/BillingResult;

    invoke-direct {v2, v3, v5}, Lcom/android/billingclient/api/Purchase$PurchasesResult;-><init>(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    .line 703
    :goto_0
    return-object v2

    .line 683
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 684
    const-string v2, "BillingClient"

    const-string v3, "Please provide a valid SKU type."

    invoke-static {v2, v3}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    new-instance v2, Lcom/android/billingclient/api/Purchase$PurchasesResult;

    sget-object v3, Lcom/android/billingclient/api/BillingResults;->EMPTY_SKU_TYPE:Lcom/android/billingclient/api/BillingResult;

    invoke-direct {v2, v3, v5}, Lcom/android/billingclient/api/Purchase$PurchasesResult;-><init>(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    goto :goto_0

    .line 688
    :cond_1
    new-instance v2, Lcom/android/billingclient/api/BillingClientImpl$7;

    invoke-direct {v2, p0, p1}, Lcom/android/billingclient/api/BillingClientImpl$7;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Ljava/lang/String;)V

    .line 689
    invoke-direct {p0, v2, v6, v7, v5}, Lcom/android/billingclient/api/BillingClientImpl;->executeAsync(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 699
    .local v1, "futurePurchaseResult":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lcom/android/billingclient/api/Purchase$PurchasesResult;>;"
    const-wide/16 v2, 0x1388

    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/billingclient/api/Purchase$PurchasesResult;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 700
    :catch_0
    move-exception v0

    .line 701
    .local v0, "ex":Ljava/lang/Exception;
    :goto_1
    new-instance v2, Lcom/android/billingclient/api/Purchase$PurchasesResult;

    sget-object v3, Lcom/android/billingclient/api/BillingResults;->SERVICE_TIMEOUT:Lcom/android/billingclient/api/BillingResult;

    invoke-direct {v2, v3, v5}, Lcom/android/billingclient/api/Purchase$PurchasesResult;-><init>(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    goto :goto_0

    .line 702
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 703
    .restart local v0    # "ex":Ljava/lang/Exception;
    new-instance v2, Lcom/android/billingclient/api/Purchase$PurchasesResult;

    sget-object v3, Lcom/android/billingclient/api/BillingResults;->INTERNAL_ERROR:Lcom/android/billingclient/api/BillingResult;

    invoke-direct {v2, v3, v5}, Lcom/android/billingclient/api/Purchase$PurchasesResult;-><init>(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    goto :goto_0

    .line 700
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public querySkuDetailsAsync(Lcom/android/billingclient/api/SkuDetailsParams;Lcom/android/billingclient/api/SkuDetailsResponseListener;)V
    .locals 9
    .param p1, "params"    # Lcom/android/billingclient/api/SkuDetailsParams;
    .param p2, "listener"    # Lcom/android/billingclient/api/SkuDetailsResponseListener;

    .prologue
    const/4 v8, 0x0

    .line 750
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl;->isReady()Z

    move-result v4

    if-nez v4, :cond_1

    .line 751
    sget-object v4, Lcom/android/billingclient/api/BillingResults;->SERVICE_DISCONNECTED:Lcom/android/billingclient/api/BillingResult;

    invoke-interface {p2, v4, v8}, Lcom/android/billingclient/api/SkuDetailsResponseListener;->onSkuDetailsResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    .line 807
    :cond_0
    :goto_0
    return-void

    .line 755
    :cond_1
    invoke-virtual {p1}, Lcom/android/billingclient/api/SkuDetailsParams;->getSkuType()Ljava/lang/String;

    move-result-object v2

    .line 756
    .local v2, "skuType":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/billingclient/api/SkuDetailsParams;->getSkusList()Ljava/util/List;

    move-result-object v3

    .line 759
    .local v3, "skusList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 760
    const-string v0, "Please fix the input params. SKU type can\'t be empty."

    .line 761
    .local v0, "msg":Ljava/lang/String;
    const-string v4, "BillingClient"

    invoke-static {v4, v0}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    sget-object v4, Lcom/android/billingclient/api/BillingResults;->EMPTY_SKU_TYPE:Lcom/android/billingclient/api/BillingResult;

    invoke-interface {p2, v4, v8}, Lcom/android/billingclient/api/SkuDetailsResponseListener;->onSkuDetailsResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    goto :goto_0

    .line 766
    .end local v0    # "msg":Ljava/lang/String;
    :cond_2
    if-nez v3, :cond_3

    .line 767
    const-string v0, "Please fix the input params. The list of SKUs can\'t be empty."

    .line 768
    .restart local v0    # "msg":Ljava/lang/String;
    const-string v4, "BillingClient"

    invoke-static {v4, v0}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    sget-object v4, Lcom/android/billingclient/api/BillingResults;->EMPTY_SKU_LIST:Lcom/android/billingclient/api/BillingResult;

    invoke-interface {p2, v4, v8}, Lcom/android/billingclient/api/SkuDetailsResponseListener;->onSkuDetailsResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    goto :goto_0

    .line 773
    .end local v0    # "msg":Ljava/lang/String;
    :cond_3
    new-instance v4, Lcom/android/billingclient/api/BillingClientImpl$10;

    invoke-direct {v4, p0, v2, v3, p2}, Lcom/android/billingclient/api/BillingClientImpl$10;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Ljava/lang/String;Ljava/util/List;Lcom/android/billingclient/api/SkuDetailsResponseListener;)V

    const-wide/16 v6, 0x7530

    new-instance v5, Lcom/android/billingclient/api/BillingClientImpl$11;

    invoke-direct {v5, p0, p2}, Lcom/android/billingclient/api/BillingClientImpl$11;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/SkuDetailsResponseListener;)V

    .line 774
    invoke-direct {p0, v4, v6, v7, v5}, Lcom/android/billingclient/api/BillingClientImpl;->executeAsync(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 803
    .local v1, "result":Ljava/util/concurrent/Future;
    if-nez v1, :cond_0

    .line 805
    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClientImpl;->getBillingResultForNullFutureResult()Lcom/android/billingclient/api/BillingResult;

    move-result-object v4

    .line 804
    invoke-interface {p2, v4, v8}, Lcom/android/billingclient/api/SkuDetailsResponseListener;->onSkuDetailsResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    goto :goto_0
.end method

.method querySkuDetailsInternal(Ljava/lang/String;Ljava/util/List;)Lcom/android/billingclient/api/SkuDetails$SkuDetailsResult;
    .locals 24
    .param p1, "skuType"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/billingclient/api/SkuDetails$SkuDetailsResult;"
        }
    .end annotation

    .prologue
    .line 1231
    .local p2, "skuList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 1234
    .local v18, "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/android/billingclient/api/SkuDetails;>;"
    const/16 v21, 0x0

    .line 1235
    .local v21, "startIndex":I
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v14

    .line 1236
    .local v14, "listSize":I
    :goto_0
    move/from16 v0, v21

    if-ge v0, v14, :cond_7

    .line 1238
    add-int/lit8 v12, v21, 0x14

    .line 1239
    .local v12, "endIndex":I
    if-le v12, v14, :cond_0

    .line 1240
    move v12, v14

    .line 1242
    :cond_0
    new-instance v8, Ljava/util/ArrayList;

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-interface {v0, v1, v12}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-direct {v8, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1243
    .local v8, "curSkuList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 1244
    .local v6, "querySkus":Landroid/os/Bundle;
    const-string v2, "ITEM_ID_LIST"

    invoke-virtual {v6, v2, v8}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1246
    const-string/jumbo v2, "playBillingLibraryVersion"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/billingclient/api/BillingClientImpl;->mQualifiedVersionNumber:Ljava/lang/String;

    invoke-virtual {v6, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1249
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/billingclient/api/BillingClientImpl;->mIABv10Supported:Z

    if-eqz v2, :cond_1

    .line 1250
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/billingclient/api/BillingClientImpl;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/16 v3, 0xa

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/billingclient/api/BillingClientImpl;->mApplicationContext:Landroid/content/Context;

    .line 1253
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/billingclient/api/BillingClientImpl;->mIABv9Supported:Z

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/billingclient/api/BillingClientImpl;->mEnablePendingPurchases:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/billingclient/api/BillingClientImpl;->mQualifiedVersionNumber:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 1256
    move-object/from16 v0, v23

    invoke-static {v5, v7, v0}, Lcom/android/billingclient/util/BillingHelper;->constructExtraParamsForGetSkuDetails(ZZLjava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    move-object/from16 v5, p1

    .line 1251
    invoke-interface/range {v2 .. v7}, Lcom/android/vending/billing/IInAppBillingService;->getSkuDetailsExtraParams(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v19

    .line 1274
    .local v19, "skuDetails":Landroid/os/Bundle;
    :goto_1
    if-nez v19, :cond_2

    .line 1275
    const-string/jumbo v10, "querySkuDetailsAsync got null sku details list"

    .line 1276
    .local v10, "debugMessage":Ljava/lang/String;
    const-string v2, "BillingClient"

    invoke-static {v2, v10}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1277
    new-instance v2, Lcom/android/billingclient/api/SkuDetails$SkuDetailsResult;

    const/4 v3, 0x4

    const-string v4, "Null sku details list"

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/android/billingclient/api/SkuDetails$SkuDetailsResult;-><init>(ILjava/lang/String;Ljava/util/List;)V

    .line 1330
    .end local v6    # "querySkus":Landroid/os/Bundle;
    .end local v8    # "curSkuList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10    # "debugMessage":Ljava/lang/String;
    .end local v12    # "endIndex":I
    .end local v19    # "skuDetails":Landroid/os/Bundle;
    :goto_2
    return-object v2

    .line 1259
    .restart local v6    # "querySkus":Landroid/os/Bundle;
    .restart local v8    # "curSkuList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v12    # "endIndex":I
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/billingclient/api/BillingClientImpl;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/billingclient/api/BillingClientImpl;->mApplicationContext:Landroid/content/Context;

    .line 1261
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1260
    move-object/from16 v0, p1

    invoke-interface {v2, v3, v4, v0, v6}, Lcom/android/vending/billing/IInAppBillingService;->getSkuDetails(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v19

    .restart local v19    # "skuDetails":Landroid/os/Bundle;
    goto :goto_1

    .line 1264
    .end local v19    # "skuDetails":Landroid/os/Bundle;
    :catch_0
    move-exception v11

    .line 1265
    .local v11, "e":Ljava/lang/Exception;
    const-string/jumbo v15, "querySkuDetailsAsync got a remote exception (try to reconnect)."

    .line 1267
    .local v15, "loggedMsg":Ljava/lang/String;
    const-string v2, "BillingClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1268
    new-instance v2, Lcom/android/billingclient/api/SkuDetails$SkuDetailsResult;

    const/4 v3, -0x1

    const-string v4, "Service connection is disconnected."

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/android/billingclient/api/SkuDetails$SkuDetailsResult;-><init>(ILjava/lang/String;Ljava/util/List;)V

    goto :goto_2

    .line 1283
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v15    # "loggedMsg":Ljava/lang/String;
    .restart local v19    # "skuDetails":Landroid/os/Bundle;
    :cond_2
    const-string v2, "DETAILS_LIST"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1285
    const-string v2, "BillingClient"

    move-object/from16 v0, v19

    invoke-static {v0, v2}, Lcom/android/billingclient/util/BillingHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v17

    .line 1286
    .local v17, "responseCode":I
    const-string v2, "BillingClient"

    move-object/from16 v0, v19

    invoke-static {v0, v2}, Lcom/android/billingclient/util/BillingHelper;->getDebugMessageFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1288
    .restart local v10    # "debugMessage":Ljava/lang/String;
    if-eqz v17, :cond_3

    .line 1289
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSkuDetails() failed. Response code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1290
    .local v16, "msg":Ljava/lang/String;
    const-string v2, "BillingClient"

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1291
    new-instance v2, Lcom/android/billingclient/api/SkuDetails$SkuDetailsResult;

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v2, v0, v10, v1}, Lcom/android/billingclient/api/SkuDetails$SkuDetailsResult;-><init>(ILjava/lang/String;Ljava/util/List;)V

    goto :goto_2

    .line 1293
    .end local v16    # "msg":Ljava/lang/String;
    :cond_3
    const-string v16, "getSkuDetails() returned a bundle with neither an error nor a detail list."

    .line 1294
    .restart local v16    # "msg":Ljava/lang/String;
    const-string v2, "BillingClient"

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1295
    new-instance v2, Lcom/android/billingclient/api/SkuDetails$SkuDetailsResult;

    const/4 v3, 0x6

    move-object/from16 v0, v18

    invoke-direct {v2, v3, v10, v0}, Lcom/android/billingclient/api/SkuDetails$SkuDetailsResult;-><init>(ILjava/lang/String;Ljava/util/List;)V

    goto/16 :goto_2

    .line 1299
    .end local v10    # "debugMessage":Ljava/lang/String;
    .end local v16    # "msg":Ljava/lang/String;
    .end local v17    # "responseCode":I
    :cond_4
    const-string v2, "DETAILS_LIST"

    .line 1300
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v20

    .line 1302
    .local v20, "skuDetailsJsonList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v20, :cond_5

    .line 1303
    const-string/jumbo v10, "querySkuDetailsAsync got null response list"

    .line 1304
    .restart local v10    # "debugMessage":Ljava/lang/String;
    const-string v2, "BillingClient"

    invoke-static {v2, v10}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1305
    new-instance v2, Lcom/android/billingclient/api/SkuDetails$SkuDetailsResult;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-direct {v2, v3, v10, v4}, Lcom/android/billingclient/api/SkuDetails$SkuDetailsResult;-><init>(ILjava/lang/String;Ljava/util/List;)V

    goto/16 :goto_2

    .line 1309
    .end local v10    # "debugMessage":Ljava/lang/String;
    :cond_5
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_3
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v13, v2, :cond_6

    .line 1310
    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 1313
    .local v22, "thisResponse":Ljava/lang/String;
    :try_start_2
    new-instance v9, Lcom/android/billingclient/api/SkuDetails;

    move-object/from16 v0, v22

    invoke-direct {v9, v0}, Lcom/android/billingclient/api/SkuDetails;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1322
    .local v9, "currentSkuDetails":Lcom/android/billingclient/api/SkuDetails;
    const-string v2, "BillingClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got sku details: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/billingclient/util/BillingHelper;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1323
    move-object/from16 v0, v18

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1309
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 1314
    .end local v9    # "currentSkuDetails":Lcom/android/billingclient/api/SkuDetails;
    :catch_1
    move-exception v11

    .line 1315
    .local v11, "e":Lorg/json/JSONException;
    const-string v16, "Got a JSON exception trying to decode SkuDetails."

    .line 1316
    .restart local v16    # "msg":Ljava/lang/String;
    const-string v2, "BillingClient"

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1317
    new-instance v2, Lcom/android/billingclient/api/SkuDetails$SkuDetailsResult;

    const/4 v3, 0x6

    const-string v4, "Error trying to decode SkuDetails."

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/android/billingclient/api/SkuDetails$SkuDetailsResult;-><init>(ILjava/lang/String;Ljava/util/List;)V

    goto/16 :goto_2

    .line 1327
    .end local v11    # "e":Lorg/json/JSONException;
    .end local v16    # "msg":Ljava/lang/String;
    .end local v22    # "thisResponse":Ljava/lang/String;
    :cond_6
    add-int/lit8 v21, v21, 0x14

    .line 1328
    goto/16 :goto_0

    .line 1330
    .end local v6    # "querySkus":Landroid/os/Bundle;
    .end local v8    # "curSkuList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v12    # "endIndex":I
    .end local v13    # "i":I
    .end local v19    # "skuDetails":Landroid/os/Bundle;
    .end local v20    # "skuDetailsJsonList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_7
    new-instance v2, Lcom/android/billingclient/api/SkuDetails$SkuDetailsResult;

    const/4 v3, 0x0

    const-string v4, ""

    move-object/from16 v0, v18

    invoke-direct {v2, v3, v4, v0}, Lcom/android/billingclient/api/SkuDetails$SkuDetailsResult;-><init>(ILjava/lang/String;Ljava/util/List;)V

    goto/16 :goto_2
.end method

.method setExecutorService(Ljava/util/concurrent/ExecutorService;)V
    .locals 0
    .param p1, "executorService"    # Ljava/util/concurrent/ExecutorService;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 166
    return-void
.end method

.method public startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)V
    .locals 12
    .param p1, "listener"    # Lcom/android/billingclient/api/BillingClientStateListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 274
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl;->isReady()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 275
    const-string v8, "BillingClient"

    const-string v9, "Service connection is valid. No need to re-initialize."

    invoke-static {v8, v9}, Lcom/android/billingclient/util/BillingHelper;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    sget-object v8, Lcom/android/billingclient/api/BillingResults;->OK:Lcom/android/billingclient/api/BillingResult;

    invoke-interface {p1, v8}, Lcom/android/billingclient/api/BillingClientStateListener;->onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V

    .line 347
    :goto_0
    return-void

    .line 280
    :cond_0
    iget v8, p0, Lcom/android/billingclient/api/BillingClientImpl;->mClientState:I

    if-ne v8, v11, :cond_1

    .line 281
    const-string v8, "BillingClient"

    const-string v9, "Client is already in the process of connecting to billing service."

    invoke-static {v8, v9}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    sget-object v8, Lcom/android/billingclient/api/BillingResults;->CLIENT_CONNECTING:Lcom/android/billingclient/api/BillingResult;

    invoke-interface {p1, v8}, Lcom/android/billingclient/api/BillingClientStateListener;->onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V

    goto :goto_0

    .line 287
    :cond_1
    iget v8, p0, Lcom/android/billingclient/api/BillingClientImpl;->mClientState:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_2

    .line 288
    const-string v8, "BillingClient"

    const-string v9, "Client was already closed and can\'t be reused. Please create another instance."

    invoke-static {v8, v9}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    sget-object v8, Lcom/android/billingclient/api/BillingResults;->SERVICE_DISCONNECTED:Lcom/android/billingclient/api/BillingResult;

    invoke-interface {p1, v8}, Lcom/android/billingclient/api/BillingClientStateListener;->onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V

    goto :goto_0

    .line 295
    :cond_2
    iput v11, p0, Lcom/android/billingclient/api/BillingClientImpl;->mClientState:I

    .line 298
    iget-object v8, p0, Lcom/android/billingclient/api/BillingClientImpl;->mBroadcastManager:Lcom/android/billingclient/api/BillingBroadcastManager;

    invoke-virtual {v8}, Lcom/android/billingclient/api/BillingBroadcastManager;->registerReceiver()V

    .line 301
    const-string v8, "BillingClient"

    const-string v9, "Starting in-app billing setup."

    invoke-static {v8, v9}, Lcom/android/billingclient/util/BillingHelper;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    new-instance v8, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;

    const/4 v9, 0x0

    invoke-direct {v8, p0, p1, v9}, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/BillingClientStateListener;Lcom/android/billingclient/api/BillingClientImpl$1;)V

    iput-object v8, p0, Lcom/android/billingclient/api/BillingClientImpl;->mServiceConnection:Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;

    .line 304
    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 305
    .local v7, "serviceIntent":Landroid/content/Intent;
    const-string v8, "com.android.vending"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 306
    iget-object v8, p0, Lcom/android/billingclient/api/BillingClientImpl;->mApplicationContext:Landroid/content/Context;

    .line 307
    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v7, v10}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 309
    .local v4, "intentServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v4, :cond_4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4

    .line 311
    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 312
    .local v6, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v8, :cond_4

    .line 313
    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 314
    .local v5, "packageName":Ljava/lang/String;
    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v8, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 315
    .local v0, "className":Ljava/lang/String;
    const-string v8, "com.android.vending"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    if-eqz v0, :cond_5

    .line 316
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v5, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    .local v1, "component":Landroid/content/ComponentName;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 322
    .local v3, "explicitServiceIntent":Landroid/content/Intent;
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 323
    const-string/jumbo v8, "playBillingLibraryVersion"

    iget-object v9, p0, Lcom/android/billingclient/api/BillingClientImpl;->mQualifiedVersionNumber:Ljava/lang/String;

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 325
    iget-object v8, p0, Lcom/android/billingclient/api/BillingClientImpl;->mApplicationContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/billingclient/api/BillingClientImpl;->mServiceConnection:Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;

    .line 326
    invoke-virtual {v8, v3, v9, v11}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    .line 328
    .local v2, "connectionResult":Z
    if-eqz v2, :cond_3

    .line 330
    const-string v8, "BillingClient"

    const-string v9, "Service was bonded successfully."

    invoke-static {v8, v9}, Lcom/android/billingclient/util/BillingHelper;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 335
    :cond_3
    const-string v8, "BillingClient"

    const-string v9, "Connection to Billing service is blocked."

    invoke-static {v8, v9}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "component":Landroid/content/ComponentName;
    .end local v2    # "connectionResult":Z
    .end local v3    # "explicitServiceIntent":Landroid/content/Intent;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_4
    :goto_1
    iput v10, p0, Lcom/android/billingclient/api/BillingClientImpl;->mClientState:I

    .line 345
    const-string v8, "BillingClient"

    const-string v9, "Billing service unavailable on device."

    invoke-static {v8, v9}, Lcom/android/billingclient/util/BillingHelper;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    sget-object v8, Lcom/android/billingclient/api/BillingResults;->BILLING_UNAVAILABLE:Lcom/android/billingclient/api/BillingResult;

    invoke-interface {p1, v8}, Lcom/android/billingclient/api/BillingClientStateListener;->onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V

    goto/16 :goto_0

    .line 339
    .restart local v0    # "className":Ljava/lang/String;
    .restart local v5    # "packageName":Ljava/lang/String;
    .restart local v6    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_5
    const-string v8, "BillingClient"

    const-string v9, "The device doesn\'t have valid Play Store."

    invoke-static {v8, v9}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
