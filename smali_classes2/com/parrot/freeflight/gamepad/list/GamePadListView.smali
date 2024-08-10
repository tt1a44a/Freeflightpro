.class public Lcom/parrot/freeflight/gamepad/list/GamePadListView;
.super Landroid/widget/FrameLayout;
.source "GamePadListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/gamepad/list/GamePadListView$SavedState;,
        Lcom/parrot/freeflight/gamepad/list/GamePadListView$OnVisibilityChangeListener;,
        Lcom/parrot/freeflight/gamepad/list/GamePadListView$OnDeviceClickListener;
    }
.end annotation


# instance fields
.field private final mGamePadListListener:Lcom/parrot/freeflight/gamepad/GamePadManager$GamePadListListener;

.field private final mListAdapter:Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter;

.field private mListener:Lcom/parrot/freeflight/gamepad/list/GamePadListView$OnDeviceClickListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mOnVisibilityChangeListener:Lcom/parrot/freeflight/gamepad/list/GamePadListView$OnVisibilityChangeListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mOpened:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/parrot/freeflight/gamepad/list/GamePadListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/parrot/freeflight/gamepad/list/GamePadListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    new-instance v1, Lcom/parrot/freeflight/gamepad/list/GamePadListView$1;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/gamepad/list/GamePadListView$1;-><init>(Lcom/parrot/freeflight/gamepad/list/GamePadListView;)V

    iput-object v1, p0, Lcom/parrot/freeflight/gamepad/list/GamePadListView;->mGamePadListListener:Lcom/parrot/freeflight/gamepad/GamePadManager$GamePadListListener;

    .line 56
    const v1, 0x7f0c00ea

    invoke-static {p1, v1, p0}, Lcom/parrot/freeflight/gamepad/list/GamePadListView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 57
    const v1, 0x7f0a03b8

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/gamepad/list/GamePadListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 58
    .local v0, "recyclerView":Landroid/support/v7/widget/RecyclerView;
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v1, p1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 59
    new-instance v1, Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter;

    invoke-direct {v1}, Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter;-><init>()V

    iput-object v1, p0, Lcom/parrot/freeflight/gamepad/list/GamePadListView;->mListAdapter:Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter;

    .line 60
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/list/GamePadListView;->mListAdapter:Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter;

    new-instance v2, Lcom/parrot/freeflight/gamepad/list/GamePadListView$2;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/gamepad/list/GamePadListView$2;-><init>(Lcom/parrot/freeflight/gamepad/list/GamePadListView;)V

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter;->registerListener(Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter$IListener;)V

    .line 68
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/list/GamePadListView;->mListAdapter:Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/gamepad/list/GamePadListView;)Lcom/parrot/freeflight/gamepad/list/GamePadListView$OnDeviceClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/list/GamePadListView;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/list/GamePadListView;->mListener:Lcom/parrot/freeflight/gamepad/list/GamePadListView$OnDeviceClickListener;

    return-object v0
.end method


# virtual methods
.method public getGamePadListListener()Lcom/parrot/freeflight/gamepad/GamePadManager$GamePadListListener;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/list/GamePadListView;->mGamePadListListener:Lcom/parrot/freeflight/gamepad/GamePadManager$GamePadListListener;

    return-object v0
.end method

.method public isOpened()Z
    .locals 1

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/parrot/freeflight/gamepad/list/GamePadListView;->mOpened:Z

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 73
    instance-of v1, p1, Lcom/parrot/freeflight/gamepad/list/GamePadListView$SavedState;

    if-nez v1, :cond_1

    .line 74
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 90
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 78
    check-cast v0, Lcom/parrot/freeflight/gamepad/list/GamePadListView$SavedState;

    .line 79
    .local v0, "ss":Lcom/parrot/freeflight/gamepad/list/GamePadListView$SavedState;
    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/list/GamePadListView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 81
    invoke-static {v0}, Lcom/parrot/freeflight/gamepad/list/GamePadListView$SavedState;->access$100(Lcom/parrot/freeflight/gamepad/list/GamePadListView$SavedState;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/parrot/freeflight/gamepad/list/GamePadListView;->mOpened:Z

    .line 82
    iget-boolean v1, p0, Lcom/parrot/freeflight/gamepad/list/GamePadListView;->mOpened:Z

    if-eqz v1, :cond_2

    .line 83
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/gamepad/list/GamePadListView;->setVisibility(I)V

    .line 87
    :goto_1
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/list/GamePadListView;->mOnVisibilityChangeListener:Lcom/parrot/freeflight/gamepad/list/GamePadListView$OnVisibilityChangeListener;

    if-eqz v1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/list/GamePadListView;->mOnVisibilityChangeListener:Lcom/parrot/freeflight/gamepad/list/GamePadListView$OnVisibilityChangeListener;

    invoke-interface {v1}, Lcom/parrot/freeflight/gamepad/list/GamePadListView$OnVisibilityChangeListener;->onVisibilityChange()V

    goto :goto_0

    .line 85
    :cond_2
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/gamepad/list/GamePadListView;->setVisibility(I)V

    goto :goto_1
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 95
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 97
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/parrot/freeflight/gamepad/list/GamePadListView$SavedState;

    invoke-direct {v0, v1}, Lcom/parrot/freeflight/gamepad/list/GamePadListView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 99
    .local v0, "ss":Lcom/parrot/freeflight/gamepad/list/GamePadListView$SavedState;
    iget-boolean v2, p0, Lcom/parrot/freeflight/gamepad/list/GamePadListView;->mOpened:Z

    invoke-static {v0, v2}, Lcom/parrot/freeflight/gamepad/list/GamePadListView$SavedState;->access$102(Lcom/parrot/freeflight/gamepad/list/GamePadListView$SavedState;Z)Z

    .line 100
    return-object v0
.end method

.method public setOnDeviceClickListener(Lcom/parrot/freeflight/gamepad/list/GamePadListView$OnDeviceClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/parrot/freeflight/gamepad/list/GamePadListView$OnDeviceClickListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 139
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/list/GamePadListView;->mListener:Lcom/parrot/freeflight/gamepad/list/GamePadListView$OnDeviceClickListener;

    .line 140
    return-void
.end method

.method public setOnVisibilityChangeListener(Lcom/parrot/freeflight/gamepad/list/GamePadListView$OnVisibilityChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/gamepad/list/GamePadListView$OnVisibilityChangeListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 143
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/list/GamePadListView;->mOnVisibilityChangeListener:Lcom/parrot/freeflight/gamepad/list/GamePadListView$OnVisibilityChangeListener;

    .line 144
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/list/GamePadListView;->mOnVisibilityChangeListener:Lcom/parrot/freeflight/gamepad/list/GamePadListView$OnVisibilityChangeListener;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/list/GamePadListView;->mOnVisibilityChangeListener:Lcom/parrot/freeflight/gamepad/list/GamePadListView$OnVisibilityChangeListener;

    invoke-interface {v0}, Lcom/parrot/freeflight/gamepad/list/GamePadListView$OnVisibilityChangeListener;->onVisibilityChange()V

    .line 147
    :cond_0
    return-void
.end method

.method public switchVisibility()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 104
    iget-boolean v0, p0, Lcom/parrot/freeflight/gamepad/list/GamePadListView;->mOpened:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/parrot/freeflight/gamepad/list/GamePadListView;->mOpened:Z

    .line 106
    iget-boolean v0, p0, Lcom/parrot/freeflight/gamepad/list/GamePadListView;->mOpened:Z

    if-eqz v0, :cond_2

    .line 107
    invoke-virtual {p0}, Lcom/parrot/freeflight/gamepad/list/GamePadListView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/parrot/freeflight/gamepad/list/GamePadListView$3;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/gamepad/list/GamePadListView$3;-><init>(Lcom/parrot/freeflight/gamepad/list/GamePadListView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 124
    :goto_1
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/list/GamePadListView;->mOnVisibilityChangeListener:Lcom/parrot/freeflight/gamepad/list/GamePadListView$OnVisibilityChangeListener;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/list/GamePadListView;->mOnVisibilityChangeListener:Lcom/parrot/freeflight/gamepad/list/GamePadListView$OnVisibilityChangeListener;

    invoke-interface {v0}, Lcom/parrot/freeflight/gamepad/list/GamePadListView$OnVisibilityChangeListener;->onVisibilityChange()V

    .line 127
    :cond_0
    return-void

    .line 104
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 116
    :cond_2
    invoke-virtual {p0}, Lcom/parrot/freeflight/gamepad/list/GamePadListView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, -0x3e100000    # -30.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/parrot/freeflight/gamepad/list/GamePadListView$4;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/gamepad/list/GamePadListView$4;-><init>(Lcom/parrot/freeflight/gamepad/list/GamePadListView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto :goto_1
.end method

.method public update(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/gamepad/GamePad;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/gamepad/GamePad;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 150
    .local p1, "knownGamePads":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/gamepad/GamePad;>;"
    .local p2, "discoveredGamePads":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/gamepad/GamePad;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/list/GamePadListView;->mListAdapter:Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter;->update(Ljava/util/List;Ljava/util/List;)V

    .line 151
    return-void
.end method
