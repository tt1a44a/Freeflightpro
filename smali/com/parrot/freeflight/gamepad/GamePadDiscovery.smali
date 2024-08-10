.class public Lcom/parrot/freeflight/gamepad/GamePadDiscovery;
.super Lcom/parrot/freeflight/gamepad/DiscoveryBase;
.source "GamePadDiscovery.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GamePadDiscovery"


# instance fields
.field private final mDiscoveryListListener:Lcom/parrot/freeflight/gamepad/DiscoveryBase$ListListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mGamePadDiscoveries:[Lcom/parrot/freeflight/gamepad/DiscoveryBase;


# direct methods
.method varargs constructor <init>([Lcom/parrot/freeflight/gamepad/DiscoveryBase;)V
    .locals 1
    .param p1, "gamePadDiscoveries"    # [Lcom/parrot/freeflight/gamepad/DiscoveryBase;

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/parrot/freeflight/gamepad/DiscoveryBase;-><init>()V

    .line 45
    new-instance v0, Lcom/parrot/freeflight/gamepad/GamePadDiscovery$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/gamepad/GamePadDiscovery$1;-><init>(Lcom/parrot/freeflight/gamepad/GamePadDiscovery;)V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadDiscovery;->mDiscoveryListListener:Lcom/parrot/freeflight/gamepad/DiscoveryBase$ListListener;

    .line 16
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/GamePadDiscovery;->mGamePadDiscoveries:[Lcom/parrot/freeflight/gamepad/DiscoveryBase;

    .line 17
    return-void
.end method


# virtual methods
.method public getList()Ljava/util/List;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/gamepad/GamePad;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/gamepad/GamePad;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/GamePadDiscovery;->mGamePadDiscoveries:[Lcom/parrot/freeflight/gamepad/DiscoveryBase;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 40
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/GamePadDiscovery;->mGamePadDiscoveries:[Lcom/parrot/freeflight/gamepad/DiscoveryBase;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/parrot/freeflight/gamepad/DiscoveryBase;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 39
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 42
    :cond_0
    return-object v1
.end method

.method public startScan()V
    .locals 3

    .prologue
    .line 21
    const-string v1, "GamePadDiscovery"

    const-string/jumbo v2, "startScan "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadDiscovery;->mGamePadDiscoveries:[Lcom/parrot/freeflight/gamepad/DiscoveryBase;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 23
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadDiscovery;->mGamePadDiscoveries:[Lcom/parrot/freeflight/gamepad/DiscoveryBase;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/DiscoveryBase;->startScan()V

    .line 24
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadDiscovery;->mGamePadDiscoveries:[Lcom/parrot/freeflight/gamepad/DiscoveryBase;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/GamePadDiscovery;->mDiscoveryListListener:Lcom/parrot/freeflight/gamepad/DiscoveryBase$ListListener;

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/gamepad/DiscoveryBase;->addListListener(Lcom/parrot/freeflight/gamepad/DiscoveryBase$ListListener;)V

    .line 22
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 26
    :cond_0
    return-void
.end method

.method public stopScan()V
    .locals 3

    .prologue
    .line 30
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadDiscovery;->mGamePadDiscoveries:[Lcom/parrot/freeflight/gamepad/DiscoveryBase;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 31
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadDiscovery;->mGamePadDiscoveries:[Lcom/parrot/freeflight/gamepad/DiscoveryBase;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/DiscoveryBase;->stopScan()V

    .line 32
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadDiscovery;->mGamePadDiscoveries:[Lcom/parrot/freeflight/gamepad/DiscoveryBase;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/GamePadDiscovery;->mDiscoveryListListener:Lcom/parrot/freeflight/gamepad/DiscoveryBase$ListListener;

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/gamepad/DiscoveryBase;->removeListListener(Lcom/parrot/freeflight/gamepad/DiscoveryBase$ListListener;)V

    .line 30
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 34
    :cond_0
    return-void
.end method
