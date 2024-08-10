.class public interface abstract Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder$RecordListener;
.super Ljava/lang/Object;
.source "BlackboxRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RecordListener"
.end annotation


# virtual methods
.method public abstract onRecordEntriesAvailable(Lcom/parrot/freeflight/blackbox/recorder/entries/Header;Ljava/util/List;Lcom/parrot/freeflight/blackbox/LimitedList;)V
    .param p1    # Lcom/parrot/freeflight/blackbox/recorder/entries/Header;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/parrot/freeflight/blackbox/LimitedList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parrot/freeflight/blackbox/recorder/entries/Header;",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;",
            ">;",
            "Lcom/parrot/freeflight/blackbox/LimitedList",
            "<",
            "Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;",
            ">;)V"
        }
    .end annotation
.end method
