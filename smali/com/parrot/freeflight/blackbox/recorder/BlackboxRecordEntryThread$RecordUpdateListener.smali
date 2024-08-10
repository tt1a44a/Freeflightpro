.class public interface abstract Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$RecordUpdateListener;
.super Ljava/lang/Object;
.source "BlackboxRecordEntryThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RecordUpdateListener"
.end annotation


# virtual methods
.method public abstract onRecordEnded()V
.end method

.method public abstract onRecordUpdated(Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;)V
    .param p1    # Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
