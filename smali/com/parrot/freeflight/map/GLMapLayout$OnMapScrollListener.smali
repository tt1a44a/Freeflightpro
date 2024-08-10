.class public interface abstract Lcom/parrot/freeflight/map/GLMapLayout$OnMapScrollListener;
.super Ljava/lang/Object;
.source "GLMapLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/map/GLMapLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnMapScrollListener"
.end annotation


# virtual methods
.method public abstract onMapScroll(Landroid/view/MotionEvent;)Z
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
