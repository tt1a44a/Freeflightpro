.class public interface abstract Lcom/parrot/freeflight/piloting/ui/FollowMeControllerInterface;
.super Ljava/lang/Object;
.source "FollowMeControllerInterface.java"


# virtual methods
.method public abstract setOnTargetChangeListener(Lcom/parrot/freeflight/piloting/ui/FollowMeTargetChangeListener;)V
    .param p1    # Lcom/parrot/freeflight/piloting/ui/FollowMeTargetChangeListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract updateLynxResult(Lcom/parrot/arsdk/lynx/LynxManager$LynxResult;)V
    .param p1    # Lcom/parrot/arsdk/lynx/LynxManager$LynxResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
