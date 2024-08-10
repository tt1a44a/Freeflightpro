.class public interface abstract Lcom/parrot/freeflight/followme/LynxController$OnLynxResultListener;
.super Ljava/lang/Object;
.source "LynxController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/followme/LynxController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnLynxResultListener"
.end annotation


# virtual methods
.method public abstract onLynxResultUpdate(Lcom/parrot/arsdk/lynx/LynxManager$LynxResult;)V
    .param p1    # Lcom/parrot/arsdk/lynx/LynxManager$LynxResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
