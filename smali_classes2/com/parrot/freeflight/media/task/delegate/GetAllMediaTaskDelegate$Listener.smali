.class public interface abstract Lcom/parrot/freeflight/media/task/delegate/GetAllMediaTaskDelegate$Listener;
.super Ljava/lang/Object;
.source "GetAllMediaTaskDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/media/task/delegate/GetAllMediaTaskDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onMediaNamesLoaded()V
.end method

.method public abstract onMediaObjectUpdated(Lcom/parrot/arsdk/armedia/ARMediaObject;)V
    .param p1    # Lcom/parrot/arsdk/armedia/ARMediaObject;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onRequestCompleted(Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;ZSS)V
    .param p1    # Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
