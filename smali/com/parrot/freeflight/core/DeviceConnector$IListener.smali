.class public interface abstract Lcom/parrot/freeflight/core/DeviceConnector$IListener;
.super Ljava/lang/Object;
.source "DeviceConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/core/DeviceConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IListener"
.end annotation


# virtual methods
.method public abstract onStateChanged(ILcom/parrot/freeflight/user/UserDrone;ILcom/parrot/freeflight/user/UserRemoteCtrl;)V
    .param p2    # Lcom/parrot/freeflight/user/UserDrone;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/parrot/freeflight/user/UserRemoteCtrl;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method
