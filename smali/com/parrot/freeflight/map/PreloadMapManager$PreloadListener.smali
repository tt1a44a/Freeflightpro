.class public interface abstract Lcom/parrot/freeflight/map/PreloadMapManager$PreloadListener;
.super Ljava/lang/Object;
.source "PreloadMapManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/map/PreloadMapManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PreloadListener"
.end annotation


# virtual methods
.method public abstract preloadAvailable(Z)V
.end method

.method public abstract preloadCancelled()V
.end method

.method public abstract preloadProgress(II)V
.end method

.method public abstract preloadSuccess()V
.end method
