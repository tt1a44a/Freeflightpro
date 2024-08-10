.class public interface abstract Lcom/parrot/freeflight/piloting/ui/FollowMeTargetChangeListener;
.super Ljava/lang/Object;
.source "FollowMeTargetChangeListener.java"


# virtual methods
.method public abstract onTargetSelected(FF)V
.end method

.method public abstract onTargetSelected(Landroid/graphics/RectF;)V
    .param p1    # Landroid/graphics/RectF;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onTargetUnselected()V
.end method
