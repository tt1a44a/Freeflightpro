.class public interface abstract Lcom/parrot/freeflight/gamepad/GamePad$StateListener;
.super Ljava/lang/Object;
.source "GamePad.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/gamepad/GamePad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StateListener"
.end annotation


# virtual methods
.method public abstract onChange(Lcom/parrot/freeflight/gamepad/GamePad;)V
    .param p1    # Lcom/parrot/freeflight/gamepad/GamePad;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
