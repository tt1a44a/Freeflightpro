.class public interface abstract Lcom/parrot/freeflight/flightplan/timeline/ITimelineActionListener;
.super Ljava/lang/Object;
.source "ITimelineActionListener.java"


# virtual methods
.method public abstract getDragShadowView(Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;)Landroid/view/View;
    .param p1    # Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract getProductCharacteristics()Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract isEditionAllowed()Z
.end method

.method public abstract onActionClicked(Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;Z)V
    .param p1    # Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onTotalTimeChanged(F)V
.end method

.method public abstract onTouch(Landroid/view/View;Landroid/view/MotionEvent;Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;)V
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
