.class public final Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$MppPcmdPool;
.super Ljava/lang/Object;
.source "BlackboxRecordEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MppPcmdPool"
.end annotation


# static fields
.field private static final POOL_SIZE:I = 0x3c


# instance fields
.field private final mPool:Landroid/support/v4/util/Pools$SynchronizedPool;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$SynchronizedPool",
            "<",
            "Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$MppPcmd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-instance v0, Landroid/support/v4/util/Pools$SynchronizedPool;

    const/16 v1, 0x3c

    invoke-direct {v0, v1}, Landroid/support/v4/util/Pools$SynchronizedPool;-><init>(I)V

    iput-object v0, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$MppPcmdPool;->mPool:Landroid/support/v4/util/Pools$SynchronizedPool;

    return-void
.end method


# virtual methods
.method public obtain(BBBBB)Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$MppPcmd;
    .locals 7
    .param p1, "pitch"    # B
    .param p2, "roll"    # B
    .param p3, "yaw"    # B
    .param p4, "gaz"    # B
    .param p5, "source"    # B
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 128
    iget-object v1, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$MppPcmdPool;->mPool:Landroid/support/v4/util/Pools$SynchronizedPool;

    invoke-virtual {v1}, Landroid/support/v4/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$MppPcmd;

    .line 129
    .local v0, "mppPcmd":Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$MppPcmd;
    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$MppPcmd;->setPitch(B)V

    .line 131
    invoke-virtual {v0, p2}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$MppPcmd;->setRoll(B)V

    .line 132
    invoke-virtual {v0, p3}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$MppPcmd;->setYaw(B)V

    .line 133
    invoke-virtual {v0, p4}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$MppPcmd;->setGaz(B)V

    .line 134
    invoke-virtual {v0, p5}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$MppPcmd;->setSource(B)V

    .line 138
    :goto_0
    return-object v0

    .line 136
    :cond_0
    new-instance v0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$MppPcmd;

    .end local v0    # "mppPcmd":Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$MppPcmd;
    const/4 v6, 0x0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$MppPcmd;-><init>(BBBBBLcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$1;)V

    .restart local v0    # "mppPcmd":Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$MppPcmd;
    goto :goto_0
.end method

.method public recycle(Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$MppPcmd;)V
    .locals 1
    .param p1, "mppPcmd"    # Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$MppPcmd;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 142
    iget-object v0, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$MppPcmdPool;->mPool:Landroid/support/v4/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 143
    return-void
.end method
