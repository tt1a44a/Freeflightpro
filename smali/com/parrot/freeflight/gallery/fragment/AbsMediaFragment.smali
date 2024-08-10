.class public abstract Lcom/parrot/freeflight/gallery/fragment/AbsMediaFragment;
.super Landroid/support/v4/app/Fragment;
.source "AbsMediaFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/gallery/fragment/AbsMediaFragment$MediasFragmentListener;,
        Lcom/parrot/freeflight/gallery/fragment/AbsMediaFragment$SelectionMode;
    }
.end annotation


# static fields
.field public static final CREATE_MODE:I = 0x1

.field public static final DEFAULT_MODE:I = 0x0

.field public static final DELETE_MODE:I = 0x2


# instance fields
.field protected mFlightDirectorManager:Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected mMediaFragmentListener:Lcom/parrot/freeflight/gallery/fragment/AbsMediaFragment$MediasFragmentListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected mMediaManager:Lcom/parrot/freeflight/core/academy/MediaManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected mMode:I
    .annotation build Lcom/parrot/freeflight/gallery/fragment/AbsMediaFragment$SelectionMode;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 30
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/CoreManager;->getFlightDirectorManager()Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/gallery/fragment/AbsMediaFragment;->mFlightDirectorManager:Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;

    .line 32
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/CoreManager;->getMediaManager()Lcom/parrot/freeflight/core/academy/MediaManager;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/gallery/fragment/AbsMediaFragment;->mMediaManager:Lcom/parrot/freeflight/core/academy/MediaManager;

    .line 31
    return-void
.end method


# virtual methods
.method public abstract clearSelection()V
.end method

.method public abstract getSelection()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/parrot/freeflight/gallery/data/GalleryMedia;",
            ">;"
        }
    .end annotation
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 51
    instance-of v0, p1, Lcom/parrot/freeflight/gallery/fragment/AbsMediaFragment$MediasFragmentListener;

    if-eqz v0, :cond_0

    .line 52
    check-cast p1, Lcom/parrot/freeflight/gallery/fragment/AbsMediaFragment$MediasFragmentListener;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/parrot/freeflight/gallery/fragment/AbsMediaFragment;->mMediaFragmentListener:Lcom/parrot/freeflight/gallery/fragment/AbsMediaFragment$MediasFragmentListener;

    .line 54
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 46
    return-void
.end method

.method public setSelectionMode(I)V
    .locals 1
    .param p1, "mode"    # I
        .annotation build Lcom/parrot/freeflight/gallery/fragment/AbsMediaFragment$SelectionMode;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 68
    iget v0, p0, Lcom/parrot/freeflight/gallery/fragment/AbsMediaFragment;->mMode:I

    if-eq v0, p1, :cond_0

    .line 69
    iput p1, p0, Lcom/parrot/freeflight/gallery/fragment/AbsMediaFragment;->mMode:I

    .line 70
    invoke-virtual {p0}, Lcom/parrot/freeflight/gallery/fragment/AbsMediaFragment;->clearSelection()V

    .line 72
    :cond_0
    return-void
.end method

.method public abstract updateMedias()V
.end method
