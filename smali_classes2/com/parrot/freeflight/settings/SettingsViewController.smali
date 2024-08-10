.class public Lcom/parrot/freeflight/settings/SettingsViewController;
.super Ljava/lang/Object;
.source "SettingsViewController.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/ui/settings/ISettingsViewController;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/parrot/freeflight/core/model/Model;",
        "U:",
        "Lcom/parrot/freeflight/core/model/Model;",
        "V:",
        "Lcom/parrot/freeflight/core/model/Model;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/parrot/freeflight/piloting/ui/settings/ISettingsViewController;"
    }
.end annotation


# instance fields
.field private final mCategoryList:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/settings/model/SettingsCategory",
            "<TT;TU;>;>;"
        }
    .end annotation
.end field

.field private mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mLocalSettingsModel:Lcom/parrot/freeflight/core/model/Model;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field

.field private final mModel:Lcom/parrot/freeflight/core/model/Model;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mNeedToFocusOnFirstItem:Z

.field private final mResetTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mSelectedCategoryIndex:I

.field private final mSelectedGamePadListener:Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mSettingsCategoryAdapter:Lcom/parrot/freeflight/settings/SettingsCategoryAdapter;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mSettingsCategoryListView:Landroid/widget/ListView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mSettingsEntryAdapter:Lcom/parrot/freeflight/settings/SettingsEntryAdapter;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parrot/freeflight/settings/SettingsEntryAdapter",
            "<TT;TU;>;"
        }
    .end annotation
.end field

.field private final mSettingsEntryRecyclerView:Lcom/parrot/freeflight/view/CustomRecyclerView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mTitleTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/settings/ISettingsBuilder;Lcom/parrot/freeflight/settings/ISettingsViewHolderFactory;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ListView;Lcom/parrot/freeflight/view/CustomRecyclerView;Lcom/parrot/freeflight/piloting/RelativePositionController;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/parrot/freeflight/settings/ISettingsBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/parrot/freeflight/settings/ISettingsViewHolderFactory;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p7, "titleTextView"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p8, "resetTextView"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p9, "settingsCategoryListView"    # Landroid/widget/ListView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p10, "settingsEntryRecyclerView"    # Lcom/parrot/freeflight/view/CustomRecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p11, "relativePositionController"    # Lcom/parrot/freeflight/piloting/RelativePositionController;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;TU;TV;",
            "Lcom/parrot/freeflight/settings/ISettingsBuilder",
            "<TT;TU;TV;>;",
            "Lcom/parrot/freeflight/settings/ISettingsViewHolderFactory",
            "<TT;TU;>;",
            "Landroid/widget/TextView;",
            "Landroid/widget/TextView;",
            "Landroid/widget/ListView;",
            "Lcom/parrot/freeflight/view/CustomRecyclerView;",
            "Lcom/parrot/freeflight/piloting/RelativePositionController;",
            ")V"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, "this":Lcom/parrot/freeflight/settings/SettingsViewController;, "Lcom/parrot/freeflight/settings/SettingsViewController<TT;TU;TV;>;"
    .local p2, "model":Lcom/parrot/freeflight/core/model/Model;, "TT;"
    .local p3, "localSettingsModel":Lcom/parrot/freeflight/core/model/Model;, "TU;"
    .local p4, "remoteControllerModel":Lcom/parrot/freeflight/core/model/Model;, "TV;"
    .local p5, "settingsBuilder":Lcom/parrot/freeflight/settings/ISettingsBuilder;, "Lcom/parrot/freeflight/settings/ISettingsBuilder<TT;TU;TV;>;"
    .local p6, "viewHolderFactory":Lcom/parrot/freeflight/settings/ISettingsViewHolderFactory;, "Lcom/parrot/freeflight/settings/ISettingsViewHolderFactory<TT;TU;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v1, -0x1

    iput v1, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mSelectedCategoryIndex:I

    .line 58
    new-instance v1, Lcom/parrot/freeflight/settings/SettingsViewController$1;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/settings/SettingsViewController$1;-><init>(Lcom/parrot/freeflight/settings/SettingsViewController;)V

    iput-object v1, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mSelectedGamePadListener:Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;

    .line 78
    iput-object p2, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mModel:Lcom/parrot/freeflight/core/model/Model;

    .line 79
    iput-object p3, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mLocalSettingsModel:Lcom/parrot/freeflight/core/model/Model;

    .line 80
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mSettingsEntryRecyclerView:Lcom/parrot/freeflight/view/CustomRecyclerView;

    .line 81
    iput-object p7, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mTitleTextView:Landroid/widget/TextView;

    .line 82
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mResetTextView:Landroid/widget/TextView;

    .line 83
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mSettingsCategoryListView:Landroid/widget/ListView;

    .line 85
    iget-object v1, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mTitleTextView:Landroid/widget/TextView;

    const/4 v2, 0x3

    invoke-static {p1, v1, v2}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;I)V

    .line 87
    const v1, 0x7f010012

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v7

    .line 89
    .local v7, "fadeInAnimation":Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mSettingsEntryRecyclerView:Lcom/parrot/freeflight/view/CustomRecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/view/CustomRecyclerView;->setFocusableInTouchMode(Z)V

    .line 90
    iget-object v1, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mSettingsEntryRecyclerView:Lcom/parrot/freeflight/view/CustomRecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/view/CustomRecyclerView;->setFocusable(Z)V

    .line 91
    iget-object v1, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mSettingsEntryRecyclerView:Lcom/parrot/freeflight/view/CustomRecyclerView;

    invoke-virtual {v1}, Lcom/parrot/freeflight/view/CustomRecyclerView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/SimpleItemAnimator;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 93
    iget-object v1, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mSettingsCategoryListView:Landroid/widget/ListView;

    new-instance v2, Lcom/parrot/freeflight/settings/SettingsViewController$2;

    invoke-direct {v2, p0, v7}, Lcom/parrot/freeflight/settings/SettingsViewController$2;-><init>(Lcom/parrot/freeflight/settings/SettingsViewController;Landroid/view/animation/Animation;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 116
    iget-object v1, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mSettingsCategoryListView:Landroid/widget/ListView;

    new-instance v2, Lcom/parrot/freeflight/settings/SettingsViewController$3;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/settings/SettingsViewController$3;-><init>(Lcom/parrot/freeflight/settings/SettingsViewController;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 130
    iget-object v1, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mSettingsCategoryListView:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 131
    iget-object v1, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mSettingsCategoryListView:Landroid/widget/ListView;

    new-instance v2, Lcom/parrot/freeflight/settings/SettingsViewController$4;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/settings/SettingsViewController$4;-><init>(Lcom/parrot/freeflight/settings/SettingsViewController;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    move-object v1, p5

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p11

    .line 143
    invoke-interface/range {v1 .. v6}, Lcom/parrot/freeflight/settings/ISettingsBuilder;->buildCategories(Landroid/content/Context;Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/piloting/RelativePositionController;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mCategoryList:Ljava/util/List;

    .line 144
    new-instance v1, Lcom/parrot/freeflight/settings/SettingsCategoryAdapter;

    iget-object v2, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mCategoryList:Ljava/util/List;

    invoke-direct {v1, p1, v2}, Lcom/parrot/freeflight/settings/SettingsCategoryAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mSettingsCategoryAdapter:Lcom/parrot/freeflight/settings/SettingsCategoryAdapter;

    .line 145
    iget-object v1, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mSettingsCategoryListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mSettingsCategoryAdapter:Lcom/parrot/freeflight/settings/SettingsCategoryAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 147
    new-instance v1, Lcom/parrot/freeflight/settings/SettingsEntryAdapter;

    invoke-direct {v1, p1, p6}, Lcom/parrot/freeflight/settings/SettingsEntryAdapter;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/settings/ISettingsViewHolderFactory;)V

    iput-object v1, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mSettingsEntryAdapter:Lcom/parrot/freeflight/settings/SettingsEntryAdapter;

    .line 148
    iget-object v1, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mSettingsEntryAdapter:Lcom/parrot/freeflight/settings/SettingsEntryAdapter;

    move-object/from16 v0, p10

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/view/CustomRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 150
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/CoreManager;->getGamePadManager()Lcom/parrot/freeflight/gamepad/GamePadManager;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    .line 151
    iget-object v1, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    iget-object v2, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mSelectedGamePadListener:Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/gamepad/GamePadManager;->addSelectedGamePadListener(Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;)V

    .line 153
    iget-object v1, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mResetTextView:Landroid/widget/TextView;

    new-instance v2, Lcom/parrot/freeflight/settings/SettingsViewController$5;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/settings/SettingsViewController$5;-><init>(Lcom/parrot/freeflight/settings/SettingsViewController;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/settings/SettingsViewController;)Lcom/parrot/freeflight/settings/SettingsCategoryAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/SettingsViewController;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mSettingsCategoryAdapter:Lcom/parrot/freeflight/settings/SettingsCategoryAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/settings/SettingsViewController;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/SettingsViewController;

    .prologue
    .line 29
    iget v0, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mSelectedCategoryIndex:I

    return v0
.end method

.method static synthetic access$1002(Lcom/parrot/freeflight/settings/SettingsViewController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/SettingsViewController;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mNeedToFocusOnFirstItem:Z

    return p1
.end method

.method static synthetic access$102(Lcom/parrot/freeflight/settings/SettingsViewController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/SettingsViewController;
    .param p1, "x1"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mSelectedCategoryIndex:I

    return p1
.end method

.method static synthetic access$1100(Lcom/parrot/freeflight/settings/SettingsViewController;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/SettingsViewController;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/parrot/freeflight/settings/SettingsViewController;->resetSelectedCategory()V

    return-void
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/settings/SettingsViewController;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/SettingsViewController;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mCategoryList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/settings/SettingsViewController;)Lcom/parrot/freeflight/settings/SettingsEntryAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/SettingsViewController;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mSettingsEntryAdapter:Lcom/parrot/freeflight/settings/SettingsEntryAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/settings/SettingsViewController;)Lcom/parrot/freeflight/view/CustomRecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/SettingsViewController;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mSettingsEntryRecyclerView:Lcom/parrot/freeflight/view/CustomRecyclerView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/settings/SettingsViewController;)Lcom/parrot/freeflight/core/model/Model;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/SettingsViewController;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mModel:Lcom/parrot/freeflight/core/model/Model;

    return-object v0
.end method

.method static synthetic access$600(Lcom/parrot/freeflight/settings/SettingsViewController;)Lcom/parrot/freeflight/core/model/Model;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/SettingsViewController;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mLocalSettingsModel:Lcom/parrot/freeflight/core/model/Model;

    return-object v0
.end method

.method static synthetic access$700(Lcom/parrot/freeflight/settings/SettingsViewController;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/SettingsViewController;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mTitleTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/parrot/freeflight/settings/SettingsViewController;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/SettingsViewController;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mResetTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/parrot/freeflight/settings/SettingsViewController;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/SettingsViewController;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/parrot/freeflight/settings/SettingsViewController;->updateEntriesVisibility()V

    return-void
.end method

.method private clearAllItemAnimation()V
    .locals 2

    .prologue
    .line 162
    .local p0, "this":Lcom/parrot/freeflight/settings/SettingsViewController;, "Lcom/parrot/freeflight/settings/SettingsViewController<TT;TU;TV;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mSettingsEntryRecyclerView:Lcom/parrot/freeflight/view/CustomRecyclerView;

    invoke-virtual {v1}, Lcom/parrot/freeflight/view/CustomRecyclerView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 163
    iget-object v1, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mSettingsEntryRecyclerView:Lcom/parrot/freeflight/view/CustomRecyclerView;

    invoke-virtual {v1, v0}, Lcom/parrot/freeflight/view/CustomRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 164
    iget-object v1, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mSettingsEntryRecyclerView:Lcom/parrot/freeflight/view/CustomRecyclerView;

    invoke-virtual {v1, v0}, Lcom/parrot/freeflight/view/CustomRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->destroyDrawingCache()V

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 166
    :cond_0
    return-void
.end method

.method private doSelectCategory(I)V
    .locals 4
    .param p1, "categoryIndex"    # I

    .prologue
    .line 192
    .local p0, "this":Lcom/parrot/freeflight/settings/SettingsViewController;, "Lcom/parrot/freeflight/settings/SettingsViewController<TT;TU;TV;>;"
    iput p1, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mSelectedCategoryIndex:I

    .line 193
    iget v1, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mSelectedCategoryIndex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 194
    iget-object v1, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mCategoryList:Ljava/util/List;

    iget v2, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mSelectedCategoryIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/settings/model/SettingsCategory;

    .line 195
    .local v0, "settingsCategory":Lcom/parrot/freeflight/settings/model/SettingsCategory;, "Lcom/parrot/freeflight/settings/model/SettingsCategory<TT;TU;>;"
    iget-object v1, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mModel:Lcom/parrot/freeflight/core/model/Model;

    iget-object v2, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mLocalSettingsModel:Lcom/parrot/freeflight/core/model/Model;

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/settings/model/SettingsCategory;->update(Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/core/model/Model;)Ljava/util/List;

    .line 196
    iget-object v2, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mTitleTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mCategoryList:Ljava/util/List;

    iget v3, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mSelectedCategoryIndex:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/settings/model/SettingsCategory;

    invoke-virtual {v1}, Lcom/parrot/freeflight/settings/model/SettingsCategory;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v1, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mSettingsCategoryAdapter:Lcom/parrot/freeflight/settings/SettingsCategoryAdapter;

    iget v2, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mSelectedCategoryIndex:I

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/settings/SettingsCategoryAdapter;->setSelection(I)V

    .line 200
    iget-object v1, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mSettingsCategoryListView:Landroid/widget/ListView;

    iget v2, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mSelectedCategoryIndex:I

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 201
    invoke-direct {p0}, Lcom/parrot/freeflight/settings/SettingsViewController;->updateEntriesVisibility()V

    .line 202
    invoke-virtual {p0}, Lcom/parrot/freeflight/settings/SettingsViewController;->update()V

    .line 204
    .end local v0    # "settingsCategory":Lcom/parrot/freeflight/settings/model/SettingsCategory;, "Lcom/parrot/freeflight/settings/model/SettingsCategory<TT;TU;>;"
    :cond_0
    return-void
.end method

.method private resetSelectedCategory()V
    .locals 3

    .prologue
    .line 236
    .local p0, "this":Lcom/parrot/freeflight/settings/SettingsViewController;, "Lcom/parrot/freeflight/settings/SettingsViewController<TT;TU;TV;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mCategoryList:Ljava/util/List;

    iget v1, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mSelectedCategoryIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/settings/model/SettingsCategory;

    iget-object v1, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mModel:Lcom/parrot/freeflight/core/model/Model;

    iget-object v2, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mLocalSettingsModel:Lcom/parrot/freeflight/core/model/Model;

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/settings/model/SettingsCategory;->reset(Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/core/model/Model;)V

    .line 237
    return-void
.end method

.method private updateEntriesVisibility()V
    .locals 6

    .prologue
    .local p0, "this":Lcom/parrot/freeflight/settings/SettingsViewController;, "Lcom/parrot/freeflight/settings/SettingsViewController<TT;TU;TV;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 207
    iget-object v1, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mCategoryList:Ljava/util/List;

    iget v2, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mSelectedCategoryIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/settings/model/SettingsCategory;

    .line 208
    .local v0, "settingCategory":Lcom/parrot/freeflight/settings/model/SettingsCategory;, "Lcom/parrot/freeflight/settings/model/SettingsCategory<TT;TU;>;"
    iget-object v1, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mSettingsEntryAdapter:Lcom/parrot/freeflight/settings/SettingsEntryAdapter;

    invoke-virtual {v0}, Lcom/parrot/freeflight/settings/model/SettingsCategory;->getVisibleSettingEntries()Ljava/util/List;

    move-result-object v2

    iget-boolean v3, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mNeedToFocusOnFirstItem:Z

    invoke-virtual {v1, v2, v3}, Lcom/parrot/freeflight/settings/SettingsEntryAdapter;->setSettingsEntries(Ljava/util/List;Z)V

    .line 209
    iput-boolean v4, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mNeedToFocusOnFirstItem:Z

    .line 211
    invoke-virtual {v0}, Lcom/parrot/freeflight/settings/model/SettingsCategory;->getId()I

    move-result v1

    if-ne v1, v5, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mModel:Lcom/parrot/freeflight/core/model/Model;

    instance-of v1, v1, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    if-eqz v1, :cond_0

    .line 212
    iget-object v1, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mSettingsEntryRecyclerView:Lcom/parrot/freeflight/view/CustomRecyclerView;

    invoke-virtual {v1}, Lcom/parrot/freeflight/view/CustomRecyclerView;->getLayoutManager()Lcom/parrot/freeflight/view/CustomRecyclerView$CustomLayoutManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/parrot/freeflight/view/CustomRecyclerView$CustomLayoutManager;->setScrollEnabled(Z)V

    .line 216
    :goto_0
    return-void

    .line 214
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mSettingsEntryRecyclerView:Lcom/parrot/freeflight/view/CustomRecyclerView;

    invoke-virtual {v1}, Lcom/parrot/freeflight/view/CustomRecyclerView;->getLayoutManager()Lcom/parrot/freeflight/view/CustomRecyclerView$CustomLayoutManager;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/parrot/freeflight/view/CustomRecyclerView$CustomLayoutManager;->setScrollEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public getSelectedCategory()I
    .locals 1

    .prologue
    .line 169
    .local p0, "this":Lcom/parrot/freeflight/settings/SettingsViewController;, "Lcom/parrot/freeflight/settings/SettingsViewController<TT;TU;TV;>;"
    iget v0, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mSelectedCategoryIndex:I

    return v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 240
    .local p0, "this":Lcom/parrot/freeflight/settings/SettingsViewController;, "Lcom/parrot/freeflight/settings/SettingsViewController<TT;TU;TV;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    iget-object v1, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mSelectedGamePadListener:Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/GamePadManager;->removeSelectedGamePadListener(Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;)V

    .line 241
    return-void
.end method

.method public reload()V
    .locals 4

    .prologue
    .line 229
    .local p0, "this":Lcom/parrot/freeflight/settings/SettingsViewController;, "Lcom/parrot/freeflight/settings/SettingsViewController<TT;TU;TV;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mSettingsEntryAdapter:Lcom/parrot/freeflight/settings/SettingsEntryAdapter;

    invoke-virtual {v1}, Lcom/parrot/freeflight/settings/SettingsEntryAdapter;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 230
    iget-object v1, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mSettingsEntryAdapter:Lcom/parrot/freeflight/settings/SettingsEntryAdapter;

    invoke-virtual {v1, v0}, Lcom/parrot/freeflight/settings/SettingsEntryAdapter;->notifyItemChanged(I)V

    .line 229
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 232
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mSettingsCategoryListView:Landroid/widget/ListView;

    iget v2, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mSelectedCategoryIndex:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 233
    return-void
.end method

.method public setSelectedCategory(I)V
    .locals 1
    .param p1, "categoryIndex"    # I

    .prologue
    .line 173
    .local p0, "this":Lcom/parrot/freeflight/settings/SettingsViewController;, "Lcom/parrot/freeflight/settings/SettingsViewController<TT;TU;TV;>;"
    iget v0, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mSelectedCategoryIndex:I

    if-eq v0, p1, :cond_0

    .line 174
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/settings/SettingsViewController;->doSelectCategory(I)V

    .line 176
    :cond_0
    return-void
.end method

.method public setSelectedCategoryById(I)V
    .locals 3
    .param p1, "categoryId"    # I

    .prologue
    .line 179
    .local p0, "this":Lcom/parrot/freeflight/settings/SettingsViewController;, "Lcom/parrot/freeflight/settings/SettingsViewController<TT;TU;TV;>;"
    const/4 v0, 0x0

    .line 180
    .local v0, "categoryIndex":I
    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    .line 181
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mCategoryList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 182
    iget-object v2, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mCategoryList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parrot/freeflight/settings/model/SettingsCategory;

    invoke-virtual {v2}, Lcom/parrot/freeflight/settings/model/SettingsCategory;->getId()I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 183
    move v0, v1

    .line 188
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/settings/SettingsViewController;->setSelectedCategory(I)V

    .line 189
    return-void

    .line 181
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public update()V
    .locals 6

    .prologue
    .line 220
    .local p0, "this":Lcom/parrot/freeflight/settings/SettingsViewController;, "Lcom/parrot/freeflight/settings/SettingsViewController<TT;TU;TV;>;"
    iget-object v4, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mCategoryList:Ljava/util/List;

    iget v5, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mSelectedCategoryIndex:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/settings/model/SettingsCategory;

    .line 222
    .local v1, "settingCategory":Lcom/parrot/freeflight/settings/model/SettingsCategory;, "Lcom/parrot/freeflight/settings/model/SettingsCategory<TT;TU;>;"
    iget-object v4, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mModel:Lcom/parrot/freeflight/core/model/Model;

    iget-object v5, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mLocalSettingsModel:Lcom/parrot/freeflight/core/model/Model;

    invoke-virtual {v1, v4, v5}, Lcom/parrot/freeflight/settings/model/SettingsCategory;->update(Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/core/model/Model;)Ljava/util/List;

    move-result-object v3

    .line 223
    .local v3, "updatedIndices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 224
    iget-object v5, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mSettingsEntryAdapter:Lcom/parrot/freeflight/settings/SettingsEntryAdapter;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/parrot/freeflight/settings/SettingsEntryAdapter;->notifyItemChanged(I)V

    .line 223
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 226
    :cond_0
    return-void
.end method
