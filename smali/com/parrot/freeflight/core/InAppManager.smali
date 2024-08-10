.class public Lcom/parrot/freeflight/core/InAppManager;
.super Ljava/lang/Object;
.source "InAppManager.java"

# interfaces
.implements Lcom/parrot/freeflight/purchase/util/BillingManager$BillingUpdatesListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/core/InAppManager$InAppManagerListener;
    }
.end annotation


# instance fields
.field private mBillingManager:Lcom/parrot/freeflight/purchase/util/BillingManager;

.field private final mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/parrot/freeflight/core/InAppManager$InAppManagerListener;",
            ">;"
        }
    .end annotation
.end field

.field private mStarted:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/core/InAppManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 35
    new-instance v0, Lcom/parrot/freeflight/purchase/util/BillingManager;

    invoke-direct {v0, p1, p0}, Lcom/parrot/freeflight/purchase/util/BillingManager;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/purchase/util/BillingManager$BillingUpdatesListener;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/InAppManager;->mBillingManager:Lcom/parrot/freeflight/purchase/util/BillingManager;

    .line 36
    return-void
.end method

.method private notifyListeners()V
    .locals 3

    .prologue
    .line 66
    iget-object v1, p0, Lcom/parrot/freeflight/core/InAppManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/core/InAppManager$InAppManagerListener;

    .line 67
    .local v0, "listener":Lcom/parrot/freeflight/core/InAppManager$InAppManagerListener;
    invoke-interface {v0}, Lcom/parrot/freeflight/core/InAppManager$InAppManagerListener;->onPurchasedItemInventoryChanged()V

    goto :goto_0

    .line 69
    .end local v0    # "listener":Lcom/parrot/freeflight/core/InAppManager$InAppManagerListener;
    :cond_0
    return-void
.end method

.method private startPurchase(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "productId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 76
    iget-object v0, p0, Lcom/parrot/freeflight/core/InAppManager;->mBillingManager:Lcom/parrot/freeflight/purchase/util/BillingManager;

    invoke-virtual {v0, p1, p2}, Lcom/parrot/freeflight/purchase/util/BillingManager;->purchase(Landroid/app/Activity;Ljava/lang/String;)V

    .line 77
    return-void
.end method


# virtual methods
.method public isFlightDirectorPurchased()Z
    .locals 2

    .prologue
    .line 114
    const-string v0, "com.parrot.freeflight3.flightdirector"

    .line 115
    .local v0, "sku":Ljava/lang/String;
    iget-object v1, p0, Lcom/parrot/freeflight/core/InAppManager;->mBillingManager:Lcom/parrot/freeflight/purchase/util/BillingManager;

    invoke-virtual {v1, v0}, Lcom/parrot/freeflight/purchase/util/BillingManager;->isPurchased(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public isFlightPlanPurchased()Z
    .locals 2

    .prologue
    .line 86
    const-string v0, "com.parrot.freeflight3.flightplan"

    .line 87
    .local v0, "sku":Ljava/lang/String;
    iget-object v1, p0, Lcom/parrot/freeflight/core/InAppManager;->mBillingManager:Lcom/parrot/freeflight/purchase/util/BillingManager;

    invoke-virtual {v1, v0}, Lcom/parrot/freeflight/purchase/util/BillingManager;->isPurchased(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public isFollowMePurchased()Z
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x1

    return v0
.end method

.method public onPurchasesUpdated()V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/parrot/freeflight/core/InAppManager;->notifyListeners()V

    .line 128
    return-void
.end method

.method public registerListener(Lcom/parrot/freeflight/core/InAppManager$InAppManagerListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/core/InAppManager$InAppManagerListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 57
    iget-object v0, p0, Lcom/parrot/freeflight/core/InAppManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    .line 58
    invoke-interface {p1}, Lcom/parrot/freeflight/core/InAppManager$InAppManagerListener;->onPurchasedItemInventoryChanged()V

    .line 59
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/InAppManager;->mStarted:Z

    if-nez v0, :cond_0

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/core/InAppManager;->mStarted:Z

    .line 41
    iget-object v0, p0, Lcom/parrot/freeflight/core/InAppManager;->mBillingManager:Lcom/parrot/freeflight/purchase/util/BillingManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/purchase/util/BillingManager;->start()V

    .line 43
    :cond_0
    return-void
.end method

.method public startFlightDirectorPurchase(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 108
    const-string v0, "com.parrot.freeflight3.flightdirector"

    .line 109
    .local v0, "sku":Ljava/lang/String;
    invoke-direct {p0, p1, v0}, Lcom/parrot/freeflight/core/InAppManager;->startPurchase(Landroid/app/Activity;Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public startFlightPlanPurchase(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 80
    const-string v0, "com.parrot.freeflight3.flightplan"

    .line 81
    .local v0, "sku":Ljava/lang/String;
    invoke-direct {p0, p1, v0}, Lcom/parrot/freeflight/core/InAppManager;->startPurchase(Landroid/app/Activity;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public startFollowMePurchase(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 94
    const-string v0, "com.parrot.freeflight3.followme"

    .line 95
    .local v0, "sku":Ljava/lang/String;
    invoke-direct {p0, p1, v0}, Lcom/parrot/freeflight/core/InAppManager;->startPurchase(Landroid/app/Activity;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/InAppManager;->mStarted:Z

    if-eqz v0, :cond_0

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/core/InAppManager;->mStarted:Z

    .line 48
    iget-object v0, p0, Lcom/parrot/freeflight/core/InAppManager;->mBillingManager:Lcom/parrot/freeflight/purchase/util/BillingManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/purchase/util/BillingManager;->stop()V

    .line 50
    :cond_0
    return-void
.end method

.method public unregisterListener(Lcom/parrot/freeflight/core/InAppManager$InAppManagerListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/core/InAppManager$InAppManagerListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 62
    iget-object v0, p0, Lcom/parrot/freeflight/core/InAppManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 63
    return-void
.end method
