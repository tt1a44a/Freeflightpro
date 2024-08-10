.class public interface abstract Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$MppPilotingInfoUpdatable;
.super Ljava/lang/Object;
.source "BlackboxRecordEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MppPilotingInfoUpdatable"
.end annotation


# virtual methods
.method public abstract updateMppPilotingInfo(DLcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$MppPcmd;)V
    .param p3    # Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$MppPcmd;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
