.class public interface abstract Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$AdapterListener;
.super Ljava/lang/Object;
.source "MomentsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AdapterListener"
.end annotation


# virtual methods
.method public abstract onHighlightClick(J)V
.end method

.method public abstract onHighlightsChanged(Ljava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/muvee/mvdronecomposer/HighlightSegment;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onHighlightsLimit()V
.end method

.method public abstract onStartScan()V
.end method

.method public abstract onStopScan()V
.end method
