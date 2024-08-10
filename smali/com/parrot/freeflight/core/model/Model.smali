.class public abstract Lcom/parrot/freeflight/core/model/Model;
.super Ljava/lang/Object;
.source "Model.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/core/model/Model$Listener;
    }
.end annotation


# static fields
.field public static final DUMMY_HARDWARE_VERSION:Ljava/lang/String; = "HW_00"

.field public static final DUMMY_SOFTWARE_VERSION:Ljava/lang/String; = "0.0.0"


# instance fields
.field private final mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/parrot/freeflight/core/model/Model$Listener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/core/model/Model;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 23
    return-void
.end method


# virtual methods
.method public final addListener(Lcom/parrot/freeflight/core/model/Model$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/core/model/Model$Listener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 42
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/Model;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/parrot/freeflight/core/model/Model$Listener;->onChange()V

    .line 43
    :cond_0
    return-void
.end method

.method public close()V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/Model;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 58
    return-void
.end method

.method public abstract getBatteryLevel()I
.end method

.method public abstract getSoftwareVersion()Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract listenEvents(Landroid/content/Context;Z)V
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public loadFromStore()V
    .locals 0
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 33
    return-void
.end method

.method public notifyListener()V
    .locals 3

    .prologue
    .line 50
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/Model;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/core/model/Model$Listener;

    .line 51
    .local v0, "listener":Lcom/parrot/freeflight/core/model/Model$Listener;
    invoke-interface {v0}, Lcom/parrot/freeflight/core/model/Model$Listener;->onChange()V

    goto :goto_0

    .line 53
    .end local v0    # "listener":Lcom/parrot/freeflight/core/model/Model$Listener;
    :cond_0
    return-void
.end method

.method public final removeListener(Lcom/parrot/freeflight/core/model/Model$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/core/model/Model$Listener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 46
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/Model;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 47
    return-void
.end method

.method public saveToStore()V
    .locals 0
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 38
    return-void
.end method
