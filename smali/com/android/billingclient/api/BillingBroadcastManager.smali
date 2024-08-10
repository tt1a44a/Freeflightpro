.class Lcom/android/billingclient/api/BillingBroadcastManager;
.super Ljava/lang/Object;
.source "BillingBroadcastManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/billingclient/api/BillingBroadcastManager$BillingBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final ACTION:Ljava/lang/String; = "com.android.vending.billing.PURCHASES_UPDATED"

.field private static final TAG:Ljava/lang/String; = "BillingBroadcastManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mReceiver:Lcom/android/billingclient/api/BillingBroadcastManager$BillingBroadcastReceiver;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/billingclient/api/PurchasesUpdatedListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/android/billingclient/api/PurchasesUpdatedListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/billingclient/api/BillingBroadcastManager;->mContext:Landroid/content/Context;

    .line 49
    new-instance v0, Lcom/android/billingclient/api/BillingBroadcastManager$BillingBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lcom/android/billingclient/api/BillingBroadcastManager$BillingBroadcastReceiver;-><init>(Lcom/android/billingclient/api/BillingBroadcastManager;Lcom/android/billingclient/api/PurchasesUpdatedListener;Lcom/android/billingclient/api/BillingBroadcastManager$1;)V

    iput-object v0, p0, Lcom/android/billingclient/api/BillingBroadcastManager;->mReceiver:Lcom/android/billingclient/api/BillingBroadcastManager$BillingBroadcastReceiver;

    .line 50
    return-void
.end method

.method static synthetic access$200(Lcom/android/billingclient/api/BillingBroadcastManager;)Lcom/android/billingclient/api/BillingBroadcastManager$BillingBroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/android/billingclient/api/BillingBroadcastManager;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/billingclient/api/BillingBroadcastManager;->mReceiver:Lcom/android/billingclient/api/BillingBroadcastManager$BillingBroadcastReceiver;

    return-object v0
.end method


# virtual methods
.method destroy()V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/billingclient/api/BillingBroadcastManager;->mReceiver:Lcom/android/billingclient/api/BillingBroadcastManager$BillingBroadcastReceiver;

    iget-object v1, p0, Lcom/android/billingclient/api/BillingBroadcastManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingBroadcastManager$BillingBroadcastReceiver;->unRegister(Landroid/content/Context;)V

    .line 68
    return-void
.end method

.method getListener()Lcom/android/billingclient/api/PurchasesUpdatedListener;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/billingclient/api/BillingBroadcastManager;->mReceiver:Lcom/android/billingclient/api/BillingBroadcastManager$BillingBroadcastReceiver;

    invoke-static {v0}, Lcom/android/billingclient/api/BillingBroadcastManager$BillingBroadcastReceiver;->access$100(Lcom/android/billingclient/api/BillingBroadcastManager$BillingBroadcastReceiver;)Lcom/android/billingclient/api/PurchasesUpdatedListener;

    move-result-object v0

    return-object v0
.end method

.method registerReceiver()V
    .locals 4

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/billingclient/api/BillingBroadcastManager;->mReceiver:Lcom/android/billingclient/api/BillingBroadcastManager$BillingBroadcastReceiver;

    iget-object v1, p0, Lcom/android/billingclient/api/BillingBroadcastManager;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.vending.billing.PURCHASES_UPDATED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/billingclient/api/BillingBroadcastManager$BillingBroadcastReceiver;->register(Landroid/content/Context;Landroid/content/IntentFilter;)V

    .line 54
    return-void
.end method
