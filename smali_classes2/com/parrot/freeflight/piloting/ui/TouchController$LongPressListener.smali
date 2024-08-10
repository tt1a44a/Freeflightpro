.class public interface abstract Lcom/parrot/freeflight/piloting/ui/TouchController$LongPressListener;
.super Ljava/lang/Object;
.source "TouchController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/ui/TouchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LongPressListener"
.end annotation


# virtual methods
.method public abstract onLongPressEnded()V
.end method

.method public abstract onLongPressStarted()V
.end method

.method public abstract onMovedDuringLongPress(Landroid/view/MotionEvent;)V
.end method

.method public abstract onTouchUpDuringLongPress()V
.end method
