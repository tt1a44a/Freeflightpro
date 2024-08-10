.class public interface abstract Lcom/parrot/jnicore/mppblackbox/MppBlackBoxManagerListener;
.super Ljava/lang/Object;
.source "MppBlackBoxManagerListener.java"


# virtual methods
.method public abstract onButtonActionEvent(I)V
.end method

.method public abstract onUpdatePilotingInfo(Lcom/parrot/jnicore/mppblackbox/PilotingInfo;)V
    .param p1    # Lcom/parrot/jnicore/mppblackbox/PilotingInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
