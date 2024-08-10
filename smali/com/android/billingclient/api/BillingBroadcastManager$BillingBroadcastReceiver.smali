.class Lcom/android/billingclient/api/BillingBroadcastManager$BillingBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BillingBroadcastManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/billingclient/api/BillingBroadcastManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BillingBroadcastReceiver"
.end annotation


# instance fields
.field private mIsRegistered:Z

.field private final mListener:Lcom/android/billingclient/api/PurchasesUpdatedListener;

.field final synthetic this$0:Lcom/android/billingclient/api/BillingBroadcastManager;


# direct methods
.method private constructor <init>(Lcom/android/billingclient/api/BillingBroadcastManager;Lcom/android/billingclient/api/PurchasesUpdatedListener;)V
    .locals 0
    .param p1    # Lcom/android/billingclient/api/BillingBroadcastManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/android/billingclient/api/PurchasesUpdatedListener;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/billingclient/api/BillingBroadcastManager$BillingBroadcastReceiver;->this$0:Lcom/android/billingclient/api/BillingBroadcastManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 75
    iput-object p2, p0, Lcom/android/billingclient/api/BillingBroadcastManager$BillingBroadcastReceiver;->mListener:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    .line 76
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/billingclient/api/BillingBroadcastManager;Lcom/android/billingclient/api/PurchasesUpdatedListener;Lcom/android/billingclient/api/BillingBroadcastManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/billingclient/api/BillingBroadcastManager;
    .param p2, "x1"    # Lcom/android/billingclient/api/PurchasesUpdatedListener;
    .param p3, "x2"    # Lcom/android/billingclient/api/BillingBroadcastManager$1;

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/android/billingclient/api/BillingBroadcastManager$BillingBroadcastReceiver;-><init>(Lcom/android/billingclient/api/BillingBroadcastManager;Lcom/android/billingclient/api/PurchasesUpdatedListener;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/billingclient/api/BillingBroadcastManager$BillingBroadcastReceiver;)Lcom/android/billingclient/api/PurchasesUpdatedListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/billingclient/api/BillingBroadcastManager$BillingBroadcastReceiver;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/billingclient/api/BillingBroadcastManager$BillingBroadcastReceiver;->mListener:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 98
    const-string v2, "BillingBroadcastManager"

    invoke-static {p2, v2}, Lcom/android/billingclient/util/BillingHelper;->getBillingResultFromIntent(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    .line 99
    .local v0, "billingResult":Lcom/android/billingclient/api/BillingResult;
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Lcom/android/billingclient/util/BillingHelper;->extractPurchases(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v1

    .line 100
    .local v1, "purchases":Ljava/util/List;, "Ljava/util/List<Lcom/android/billingclient/api/Purchase;>;"
    iget-object v2, p0, Lcom/android/billingclient/api/BillingBroadcastManager$BillingBroadcastReceiver;->mListener:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    invoke-interface {v2, v0, v1}, Lcom/android/billingclient/api/PurchasesUpdatedListener;->onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    .line 101
    return-void
.end method

.method public register(Landroid/content/Context;Landroid/content/IntentFilter;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "filer"    # Landroid/content/IntentFilter;

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/android/billingclient/api/BillingBroadcastManager$BillingBroadcastReceiver;->mIsRegistered:Z

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/android/billingclient/api/BillingBroadcastManager$BillingBroadcastReceiver;->this$0:Lcom/android/billingclient/api/BillingBroadcastManager;

    invoke-static {v0}, Lcom/android/billingclient/api/BillingBroadcastManager;->access$200(Lcom/android/billingclient/api/BillingBroadcastManager;)Lcom/android/billingclient/api/BillingBroadcastManager$BillingBroadcastReceiver;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/billingclient/api/BillingBroadcastManager$BillingBroadcastReceiver;->mIsRegistered:Z

    .line 84
    :cond_0
    return-void
.end method

.method public unRegister(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/android/billingclient/api/BillingBroadcastManager$BillingBroadcastReceiver;->mIsRegistered:Z

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/billingclient/api/BillingBroadcastManager$BillingBroadcastReceiver;->this$0:Lcom/android/billingclient/api/BillingBroadcastManager;

    invoke-static {v0}, Lcom/android/billingclient/api/BillingBroadcastManager;->access$200(Lcom/android/billingclient/api/BillingBroadcastManager;)Lcom/android/billingclient/api/BillingBroadcastManager$BillingBroadcastReceiver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/billingclient/api/BillingBroadcastManager$BillingBroadcastReceiver;->mIsRegistered:Z

    .line 94
    :goto_0
    return-void

    .line 92
    :cond_0
    const-string v0, "BillingBroadcastManager"

    const-string v1, "Receiver is not registered."

    invoke-static {v0, v1}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
