.class public Lcom/parrot/freeflight/network/InternetStatusManager;
.super Ljava/lang/Object;
.source "InternetStatusManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/network/InternetStatusManager$InternetConnectionCheckListener;,
        Lcom/parrot/freeflight/network/InternetStatusManager$Listener;
    }
.end annotation


# instance fields
.field private final mConnectivityReceiver:Landroid/content/BroadcastReceiver;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mInternetAvailable:Z

.field private final mInternetConnectionCheckListener:Lcom/parrot/freeflight/network/InternetStatusManager$InternetConnectionCheckListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mInternetStatusListeners:Ljava/util/Set;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/parrot/freeflight/network/InternetStatusManager$Listener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/network/InternetStatusManager;->mInternetStatusListeners:Ljava/util/Set;

    .line 23
    new-instance v0, Lcom/parrot/freeflight/network/InternetStatusManager$InternetConnectionCheckListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/parrot/freeflight/network/InternetStatusManager$InternetConnectionCheckListener;-><init>(Lcom/parrot/freeflight/network/InternetStatusManager;Lcom/parrot/freeflight/network/InternetStatusManager$1;)V

    iput-object v0, p0, Lcom/parrot/freeflight/network/InternetStatusManager;->mInternetConnectionCheckListener:Lcom/parrot/freeflight/network/InternetStatusManager$InternetConnectionCheckListener;

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/network/InternetStatusManager;->mInternetAvailable:Z

    .line 33
    new-instance v0, Lcom/parrot/freeflight/network/InternetStatusManager$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/network/InternetStatusManager$1;-><init>(Lcom/parrot/freeflight/network/InternetStatusManager;)V

    iput-object v0, p0, Lcom/parrot/freeflight/network/InternetStatusManager;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    .line 47
    iput-object p1, p0, Lcom/parrot/freeflight/network/InternetStatusManager;->mContext:Landroid/content/Context;

    .line 48
    return-void
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/network/InternetStatusManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/network/InternetStatusManager;

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/parrot/freeflight/network/InternetStatusManager;->checkInternetConnection()V

    return-void
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/network/InternetStatusManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/network/InternetStatusManager;

    .prologue
    .line 13
    iget-boolean v0, p0, Lcom/parrot/freeflight/network/InternetStatusManager;->mInternetAvailable:Z

    return v0
.end method

.method static synthetic access$402(Lcom/parrot/freeflight/network/InternetStatusManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/network/InternetStatusManager;
    .param p1, "x1"    # Z

    .prologue
    .line 13
    iput-boolean p1, p0, Lcom/parrot/freeflight/network/InternetStatusManager;->mInternetAvailable:Z

    return p1
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/network/InternetStatusManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/network/InternetStatusManager;

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/parrot/freeflight/network/InternetStatusManager;->notifyListeners()V

    return-void
.end method

.method private checkInternetConnection()V
    .locals 2

    .prologue
    .line 91
    iget-object v1, p0, Lcom/parrot/freeflight/network/InternetStatusManager;->mInternetConnectionCheckListener:Lcom/parrot/freeflight/network/InternetStatusManager$InternetConnectionCheckListener;

    invoke-static {v1}, Lcom/parrot/freeflight/network/InternetStatusManager$InternetConnectionCheckListener;->access$200(Lcom/parrot/freeflight/network/InternetStatusManager$InternetConnectionCheckListener;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/parrot/freeflight/network/InternetStatusManager;->mInternetConnectionCheckListener:Lcom/parrot/freeflight/network/InternetStatusManager$InternetConnectionCheckListener;

    invoke-static {v1}, Lcom/parrot/freeflight/network/InternetStatusManager$InternetConnectionCheckListener;->access$300(Lcom/parrot/freeflight/network/InternetStatusManager$InternetConnectionCheckListener;)V

    .line 93
    new-instance v0, Lcom/parrot/freeflight/network/InternetConnectionChecker;

    iget-object v1, p0, Lcom/parrot/freeflight/network/InternetStatusManager;->mInternetConnectionCheckListener:Lcom/parrot/freeflight/network/InternetStatusManager$InternetConnectionCheckListener;

    invoke-direct {v0, v1}, Lcom/parrot/freeflight/network/InternetConnectionChecker;-><init>(Lcom/parrot/freeflight/network/InternetConnectionChecker$Listener;)V

    .line 94
    .local v0, "internetConnectionChecker":Lcom/parrot/freeflight/network/InternetConnectionChecker;
    iget-object v1, p0, Lcom/parrot/freeflight/network/InternetStatusManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/network/InternetConnectionChecker;->performCheck(Landroid/content/Context;)V

    .line 96
    .end local v0    # "internetConnectionChecker":Lcom/parrot/freeflight/network/InternetConnectionChecker;
    :cond_0
    return-void
.end method

.method private notifyListeners()V
    .locals 3

    .prologue
    .line 99
    iget-object v1, p0, Lcom/parrot/freeflight/network/InternetStatusManager;->mInternetStatusListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/network/InternetStatusManager$Listener;

    .line 100
    .local v0, "listener":Lcom/parrot/freeflight/network/InternetStatusManager$Listener;
    iget-boolean v2, p0, Lcom/parrot/freeflight/network/InternetStatusManager;->mInternetAvailable:Z

    invoke-interface {v0, v2}, Lcom/parrot/freeflight/network/InternetStatusManager$Listener;->onInternetStatusChanged(Z)V

    goto :goto_0

    .line 102
    .end local v0    # "listener":Lcom/parrot/freeflight/network/InternetStatusManager$Listener;
    :cond_0
    return-void
.end method


# virtual methods
.method public isInternetAvailable()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/parrot/freeflight/network/InternetStatusManager;->mInternetAvailable:Z

    return v0
.end method

.method public registerListener(Lcom/parrot/freeflight/network/InternetStatusManager$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/network/InternetStatusManager$Listener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 70
    iget-object v0, p0, Lcom/parrot/freeflight/network/InternetStatusManager;->mInternetStatusListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
    iget-boolean v0, p0, Lcom/parrot/freeflight/network/InternetStatusManager;->mInternetAvailable:Z

    invoke-interface {p1, v0}, Lcom/parrot/freeflight/network/InternetStatusManager$Listener;->onInternetStatusChanged(Z)V

    .line 73
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 58
    iget-object v0, p0, Lcom/parrot/freeflight/network/InternetStatusManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/parrot/freeflight/network/InternetStatusManager;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 59
    invoke-direct {p0}, Lcom/parrot/freeflight/network/InternetStatusManager;->checkInternetConnection()V

    .line 60
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/parrot/freeflight/network/InternetStatusManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/parrot/freeflight/network/InternetStatusManager;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 67
    return-void
.end method

.method public unregisterListener(Lcom/parrot/freeflight/network/InternetStatusManager$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/network/InternetStatusManager$Listener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 76
    iget-object v0, p0, Lcom/parrot/freeflight/network/InternetStatusManager;->mInternetStatusListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 77
    return-void
.end method
