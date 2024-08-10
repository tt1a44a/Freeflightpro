.class public Lcom/parrot/freeflight/core/UsbAccessoryManager;
.super Ljava/lang/Object;
.source "UsbAccessoryManager.java"


# instance fields
.field private mUsbAccessoryMux:Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public startMux(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 15
    iget-object v0, p0, Lcom/parrot/freeflight/core/UsbAccessoryManager;->mUsbAccessoryMux:Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;

    if-nez v0, :cond_0

    .line 16
    invoke-static {p1}, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->get(Landroid/content/Context;)Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/core/UsbAccessoryManager;->mUsbAccessoryMux:Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;

    .line 18
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/parrot/freeflight/core/UsbAccessoryManager;->mUsbAccessoryMux:Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;

    if-eqz v0, :cond_0

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/core/UsbAccessoryManager;->mUsbAccessoryMux:Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;

    .line 24
    :cond_0
    return-void
.end method
