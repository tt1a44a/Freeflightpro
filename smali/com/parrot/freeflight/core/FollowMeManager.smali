.class public Lcom/parrot/freeflight/core/FollowMeManager;
.super Ljava/lang/Object;
.source "FollowMeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/core/FollowMeManager$Listener;,
        Lcom/parrot/freeflight/core/FollowMeManager$FollowMeState;
    }
.end annotation


# static fields
.field public static final FOLLOW_ME_GEO:I = 0x1

.field public static final FOLLOW_ME_RELATIVE:I = 0x2

.field public static final LOOK_AT_ME:I = 0x3

.field public static final NONE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "FollowMeManager"


# instance fields
.field private final mFollowMeAvailable:Z

.field private mFollowMeRequested:Z

.field private final mListeners:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/core/FollowMeManager$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput v0, p0, Lcom/parrot/freeflight/core/FollowMeManager;->mState:I

    .line 35
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/parrot/freeflight/core/FollowMeManager;->mListeners:Ljava/util/List;

    .line 41
    invoke-virtual {p0}, Lcom/parrot/freeflight/core/FollowMeManager;->checkLynxAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    invoke-static {p1}, Lcom/parrot/freeflight/utils/Telephony;->isTelephonyAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    invoke-static {p1}, Lcom/parrot/freeflight/utils/Gps;->hasHardwareGps(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    invoke-static {p1}, Lcom/parrot/freeflight/util/Screen;->isLargeScreen(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/parrot/freeflight/core/FollowMeManager;->mFollowMeAvailable:Z

    .line 46
    return-void
.end method

.method private notifyListeners()V
    .locals 3

    .prologue
    .line 115
    iget-object v1, p0, Lcom/parrot/freeflight/core/FollowMeManager;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/core/FollowMeManager$Listener;

    .line 116
    .local v0, "listener":Lcom/parrot/freeflight/core/FollowMeManager$Listener;
    iget v2, p0, Lcom/parrot/freeflight/core/FollowMeManager;->mState:I

    invoke-interface {v0, v2}, Lcom/parrot/freeflight/core/FollowMeManager$Listener;->onStateChanged(I)V

    goto :goto_0

    .line 118
    .end local v0    # "listener":Lcom/parrot/freeflight/core/FollowMeManager$Listener;
    :cond_0
    return-void
.end method


# virtual methods
.method public addListener(Lcom/parrot/freeflight/core/FollowMeManager$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/core/FollowMeManager$Listener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 104
    iget-object v0, p0, Lcom/parrot/freeflight/core/FollowMeManager;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/parrot/freeflight/core/FollowMeManager;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    iget v0, p0, Lcom/parrot/freeflight/core/FollowMeManager;->mState:I

    invoke-interface {p1, v0}, Lcom/parrot/freeflight/core/FollowMeManager$Listener;->onStateChanged(I)V

    .line 108
    :cond_0
    return-void
.end method

.method public checkLynxAvailable()Z
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 121
    const/4 v0, 0x1

    .line 123
    .local v0, "available":Z
    invoke-static {}, Lcom/parrot/jniandroid/AndroidInfos;->androidCpuFeatures()J

    move-result-wide v2

    .line 124
    .local v2, "features":J
    invoke-static {}, Lcom/parrot/jniandroid/AndroidInfos;->androidCpuFamily()I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    const-wide/16 v4, 0x1

    and-long/2addr v4, v2

    cmp-long v1, v4, v6

    if-lez v1, :cond_0

    const-wide/16 v4, 0x4

    and-long/2addr v4, v2

    cmp-long v1, v4, v6

    if-nez v1, :cond_0

    .line 127
    const-string v1, "FollowMeManager"

    const-string v4, "FollowMe not available on this CPU (neon missing on armv7a)"

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const/4 v0, 0x0

    .line 130
    :cond_0
    return v0
.end method

.method public followMeGeo()I
    .locals 2

    .prologue
    .line 59
    iget v0, p0, Lcom/parrot/freeflight/core/FollowMeManager;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/parrot/freeflight/core/FollowMeManager;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 60
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/parrot/freeflight/core/FollowMeManager;->mState:I

    .line 61
    invoke-direct {p0}, Lcom/parrot/freeflight/core/FollowMeManager;->notifyListeners()V

    .line 64
    :cond_1
    iget v0, p0, Lcom/parrot/freeflight/core/FollowMeManager;->mState:I

    return v0
.end method

.method public followMeRelative()I
    .locals 2

    .prologue
    .line 68
    iget v0, p0, Lcom/parrot/freeflight/core/FollowMeManager;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/parrot/freeflight/core/FollowMeManager;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 69
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/parrot/freeflight/core/FollowMeManager;->mState:I

    .line 70
    invoke-direct {p0}, Lcom/parrot/freeflight/core/FollowMeManager;->notifyListeners()V

    .line 73
    :cond_1
    iget v0, p0, Lcom/parrot/freeflight/core/FollowMeManager;->mState:I

    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/parrot/freeflight/core/FollowMeManager;->mState:I

    return v0
.end method

.method public isFollowMeAvailable()Z
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/FollowMeManager;->mFollowMeAvailable:Z

    return v0
.end method

.method public isFollowMeRequested()Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/FollowMeManager;->mFollowMeRequested:Z

    return v0
.end method

.method public isInAnyFollowMeState()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 100
    iget v1, p0, Lcom/parrot/freeflight/core/FollowMeManager;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/parrot/freeflight/core/FollowMeManager;->mState:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lookAt()I
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/core/FollowMeManager;->mFollowMeRequested:Z

    .line 50
    iget v0, p0, Lcom/parrot/freeflight/core/FollowMeManager;->mState:I

    if-eq v0, v1, :cond_0

    .line 51
    iput v1, p0, Lcom/parrot/freeflight/core/FollowMeManager;->mState:I

    .line 52
    invoke-direct {p0}, Lcom/parrot/freeflight/core/FollowMeManager;->notifyListeners()V

    .line 55
    :cond_0
    iget v0, p0, Lcom/parrot/freeflight/core/FollowMeManager;->mState:I

    return v0
.end method

.method public removeListener(Lcom/parrot/freeflight/core/FollowMeManager$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/core/FollowMeManager$Listener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 111
    iget-object v0, p0, Lcom/parrot/freeflight/core/FollowMeManager;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 112
    return-void
.end method

.method public requestFollowMe()V
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/core/FollowMeManager;->mFollowMeRequested:Z

    .line 93
    return-void
.end method

.method public stop()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 77
    iput-boolean v1, p0, Lcom/parrot/freeflight/core/FollowMeManager;->mFollowMeRequested:Z

    .line 78
    iget v0, p0, Lcom/parrot/freeflight/core/FollowMeManager;->mState:I

    if-eqz v0, :cond_0

    .line 79
    iput v1, p0, Lcom/parrot/freeflight/core/FollowMeManager;->mState:I

    .line 80
    invoke-direct {p0}, Lcom/parrot/freeflight/core/FollowMeManager;->notifyListeners()V

    .line 83
    :cond_0
    iget v0, p0, Lcom/parrot/freeflight/core/FollowMeManager;->mState:I

    return v0
.end method
