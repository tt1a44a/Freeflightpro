.class public interface abstract Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$GamePadUpdatable;
.super Ljava/lang/Object;
.source "BlackboxRecordEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GamePadUpdatable"
.end annotation


# virtual methods
.method public abstract updateGamePad(DLcom/parrot/freeflight/gamepad/GamePad;)V
    .param p3    # Lcom/parrot/freeflight/gamepad/GamePad;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
