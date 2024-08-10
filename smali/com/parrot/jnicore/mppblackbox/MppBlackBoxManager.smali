.class public Lcom/parrot/jnicore/mppblackbox/MppBlackBoxManager;
.super Ljava/lang/Object;
.source "MppBlackBoxManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MppBlackBoxManager"


# instance fields
.field private mNativeManager:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 57
    invoke-static {}, Lcom/parrot/jnicore/mppblackbox/MppBlackBoxManager;->nativeStaticInit()I

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    const-string v0, "MppBlackBoxManager"

    const-string v1, "Failed to initialize !"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/parrot/mux/Mux$Ref;Lcom/parrot/jnicore/mppblackbox/MppBlackBoxManagerListener;)V
    .locals 4
    .param p1, "muxRef"    # Lcom/parrot/mux/Mux$Ref;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/parrot/jnicore/mppblackbox/MppBlackBoxManagerListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/jnicore/mppblackbox/MppBlackBoxManagerException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-wide v2, p0, Lcom/parrot/jnicore/mppblackbox/MppBlackBoxManager;->mNativeManager:J

    .line 24
    invoke-virtual {p1}, Lcom/parrot/mux/Mux$Ref;->getCPtr()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Lcom/parrot/jnicore/mppblackbox/MppBlackBoxManager;->nativeNew(JLjava/lang/Object;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/parrot/jnicore/mppblackbox/MppBlackBoxManager;->mNativeManager:J

    .line 25
    iget-wide v0, p0, Lcom/parrot/jnicore/mppblackbox/MppBlackBoxManager;->mNativeManager:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/parrot/jnicore/mppblackbox/MppBlackBoxManagerException;

    const-string v1, "nativeNew failed!"

    invoke-direct {v0, v1}, Lcom/parrot/jnicore/mppblackbox/MppBlackBoxManagerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_0
    return-void
.end method

.method private native nativeDestroy(J)V
.end method

.method private native nativeNew(JLjava/lang/Object;)J
.end method

.method private native nativeSendButtonAction(JI)I
.end method

.method private native nativeSendPilotingInfo(JLcom/parrot/jnicore/mppblackbox/PilotingInfo;)I
.end method

.method private static native nativeStaticInit()I
.end method


# virtual methods
.method public destroy()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 31
    iget-wide v0, p0, Lcom/parrot/jnicore/mppblackbox/MppBlackBoxManager;->mNativeManager:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 32
    iget-wide v0, p0, Lcom/parrot/jnicore/mppblackbox/MppBlackBoxManager;->mNativeManager:J

    invoke-direct {p0, v0, v1}, Lcom/parrot/jnicore/mppblackbox/MppBlackBoxManager;->nativeDestroy(J)V

    .line 33
    iput-wide v2, p0, Lcom/parrot/jnicore/mppblackbox/MppBlackBoxManager;->mNativeManager:J

    .line 35
    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 48
    :try_start_0
    iget-wide v0, p0, Lcom/parrot/jnicore/mppblackbox/MppBlackBoxManager;->mNativeManager:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 49
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Leaking "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was not destroyed!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 54
    return-void
.end method

.method public sendButtonAction(I)I
    .locals 2
    .param p1, "buttonAction"    # I

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/parrot/jnicore/mppblackbox/MppBlackBoxManager;->mNativeManager:J

    invoke-direct {p0, v0, v1, p1}, Lcom/parrot/jnicore/mppblackbox/MppBlackBoxManager;->nativeSendButtonAction(JI)I

    move-result v0

    return v0
.end method

.method public sendPilotingInfo(Lcom/parrot/jnicore/mppblackbox/PilotingInfo;)I
    .locals 2
    .param p1, "info"    # Lcom/parrot/jnicore/mppblackbox/PilotingInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/parrot/jnicore/mppblackbox/MppBlackBoxManager;->mNativeManager:J

    invoke-direct {p0, v0, v1, p1}, Lcom/parrot/jnicore/mppblackbox/MppBlackBoxManager;->nativeSendPilotingInfo(JLcom/parrot/jnicore/mppblackbox/PilotingInfo;)I

    move-result v0

    return v0
.end method
