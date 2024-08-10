.class public Lcom/parrot/freeflight/piloting/ui/settings/QuadcopterSettingsView;
.super Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;
.source "QuadcopterSettingsView.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/ui/settings/IBarDisplayer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/piloting/ui/settings/QuadcopterSettingsView$SavedState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parrot/freeflight/piloting/ui/settings/SettingsView",
        "<",
        "Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;",
        "Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;",
        "Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;",
        ">;",
        "Lcom/parrot/freeflight/piloting/ui/settings/IBarDisplayer;"
    }
.end annotation


# instance fields
.field private final mBackButton:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mHelpTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mInfoBarTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mResetTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mSettingsCategoryListView:Landroid/widget/ListView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mSettingsEntryRecyclerView:Lcom/parrot/freeflight/view/CustomRecyclerView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mSettingsViewController:Lcom/parrot/freeflight/settings/SettingsViewController;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parrot/freeflight/settings/SettingsViewController",
            "<",
            "Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;",
            "Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;",
            "Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;",
            ">;"
        }
    .end annotation
.end field

.field private final mTitleView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/parrot/freeflight/piloting/ui/settings/QuadcopterSettingsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/parrot/freeflight/piloting/ui/settings/QuadcopterSettingsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v3, 0x1

    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    const v1, 0x7f0c00ef

    invoke-static {p1, v1, p0}, Lcom/parrot/freeflight/piloting/ui/settings/QuadcopterSettingsView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 66
    const v1, 0x7f0a02e7

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/piloting/ui/settings/QuadcopterSettingsView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/settings/QuadcopterSettingsView;->mSettingsCategoryListView:Landroid/widget/ListView;

    .line 67
    const v1, 0x7f0a03b9

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/piloting/ui/settings/QuadcopterSettingsView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/view/CustomRecyclerView;

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/settings/QuadcopterSettingsView;->mSettingsEntryRecyclerView:Lcom/parrot/freeflight/view/CustomRecyclerView;

    .line 68
    const v1, 0x7f0a04b8

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/piloting/ui/settings/QuadcopterSettingsView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/settings/QuadcopterSettingsView;->mTitleView:Landroid/widget/TextView;

    .line 69
    const v1, 0x7f0a0479

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/piloting/ui/settings/QuadcopterSettingsView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/settings/QuadcopterSettingsView;->mHelpTextView:Landroid/widget/TextView;

    .line 70
    const v1, 0x7f0a04b3

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/piloting/ui/settings/QuadcopterSettingsView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/settings/QuadcopterSettingsView;->mResetTextView:Landroid/widget/TextView;

    .line 71
    const v1, 0x7f0a047e

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/piloting/ui/settings/QuadcopterSettingsView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/settings/QuadcopterSettingsView;->mInfoBarTextView:Landroid/widget/TextView;

    .line 72
    const v1, 0x7f0a01d2

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/piloting/ui/settings/QuadcopterSettingsView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/settings/QuadcopterSettingsView;->mBackButton:Landroid/widget/ImageView;

    .line 73
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/settings/QuadcopterSettingsView;->mBackButton:Landroid/widget/ImageView;

    new-instance v2, Lcom/parrot/freeflight/piloting/ui/settings/QuadcopterSettingsView$1;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/piloting/ui/settings/QuadcopterSettingsView$1;-><init>(Lcom/parrot/freeflight/piloting/ui/settings/QuadcopterSettingsView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/settings/QuadcopterSettingsView;->mSettingsEntryRecyclerView:Lcom/parrot/freeflight/view/CustomRecyclerView;

    invoke-virtual {v1, v3}, Lcom/parrot/freeflight/view/CustomRecyclerView;->setHasFixedSize(Z)V

    .line 82
    new-instance v0, Lcom/parrot/freeflight/view/CustomRecyclerView$CustomLayoutManager;

    invoke-direct {v0, p1}, Lcom/parrot/freeflight/view/CustomRecyclerView$CustomLayoutManager;-><init>(Landroid/content/Context;)V

    .line 83
    .local v0, "layoutManager":Lcom/parrot/freeflight/view/CustomRecyclerView$CustomLayoutManager;
    invoke-virtual {v0, v3}, Lcom/parrot/freeflight/view/CustomRecyclerView$CustomLayoutManager;->setOrientation(I)V

    .line 84
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/settings/QuadcopterSettingsView;->mSettingsEntryRecyclerView:Lcom/parrot/freeflight/view/CustomRecyclerView;

    invoke-virtual {v1, v0}, Lcom/parrot/freeflight/view/CustomRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 86
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/piloting/ui/settings/QuadcopterSettingsView;->fixPreLollipopTheme(Landroid/content/Context;)V

    .line 87
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/settings/QuadcopterSettingsView;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/settings/QuadcopterSettingsView;->mTitleView:Landroid/widget/TextView;

    invoke-static {p1, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 89
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/settings/QuadcopterSettingsView;->mHelpTextView:Landroid/widget/TextView;

    invoke-static {p1, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 90
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/settings/QuadcopterSettingsView;->mResetTextView:Landroid/widget/TextView;

    invoke-static {p1, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 91
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/settings/QuadcopterSettingsView;->mInfoBarTextView:Landroid/widget/TextView;

    invoke-static {p1, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 93
    :cond_0
    return-void
.end method

.method private fixPreLollipopTheme(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 163
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 164
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/QuadcopterSettingsView;->mBackButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/settings/QuadcopterSettingsView;->mBackButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 166
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic initController(Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/piloting/RelativePositionController;I)V
    .locals 6
    .param p1    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/parrot/freeflight/piloting/RelativePositionController;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 35
    move-object v1, p1

    check-cast v1, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    move-object v2, p2

    check-cast v2, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    move-object v3, p3

    check-cast v3, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    move-object v0, p0

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/parrot/freeflight/piloting/ui/settings/QuadcopterSettingsView;->initController(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;Lcom/parrot/freeflight/piloting/RelativePositionController;I)V

    return-void
.end method

.method public initController(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;Lcom/parrot/freeflight/piloting/RelativePositionController;I)V
    .locals 13
    .param p1, "model"    # Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "localSettingsModel"    # Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "remoteControllerModel"    # Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "relativePositionController"    # Lcom/parrot/freeflight/piloting/RelativePositionController;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "category"    # I

    .prologue
    .line 108
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/settings/QuadcopterSettingsView;->mSettingsViewController:Lcom/parrot/freeflight/settings/SettingsViewController;

    if-nez v1, :cond_0

    .line 109
    instance-of v1, p1, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    if-eqz v1, :cond_1

    new-instance v6, Lcom/parrot/freeflight/settings/BebopSettingsBuilder;

    invoke-direct {v6}, Lcom/parrot/freeflight/settings/BebopSettingsBuilder;-><init>()V

    .line 110
    .local v6, "settingsBuilder":Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder;
    :goto_0
    new-instance v1, Lcom/parrot/freeflight/settings/SettingsViewController;

    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/settings/QuadcopterSettingsView;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v7, Lcom/parrot/freeflight/settings/view/QuadcopterSettingsViewHolderFactory;

    invoke-direct {v7}, Lcom/parrot/freeflight/settings/view/QuadcopterSettingsViewHolderFactory;-><init>()V

    iget-object v8, p0, Lcom/parrot/freeflight/piloting/ui/settings/QuadcopterSettingsView;->mTitleView:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/parrot/freeflight/piloting/ui/settings/QuadcopterSettingsView;->mResetTextView:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/parrot/freeflight/piloting/ui/settings/QuadcopterSettingsView;->mSettingsCategoryListView:Landroid/widget/ListView;

    iget-object v11, p0, Lcom/parrot/freeflight/piloting/ui/settings/QuadcopterSettingsView;->mSettingsEntryRecyclerView:Lcom/parrot/freeflight/view/CustomRecyclerView;

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v12, p4

    invoke-direct/range {v1 .. v12}, Lcom/parrot/freeflight/settings/SettingsViewController;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/settings/ISettingsBuilder;Lcom/parrot/freeflight/settings/ISettingsViewHolderFactory;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ListView;Lcom/parrot/freeflight/view/CustomRecyclerView;Lcom/parrot/freeflight/piloting/RelativePositionController;)V

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/settings/QuadcopterSettingsView;->mSettingsViewController:Lcom/parrot/freeflight/settings/SettingsViewController;

    .line 115
    .end local v6    # "settingsBuilder":Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder;
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/settings/QuadcopterSettingsView;->mSettingsViewController:Lcom/parrot/freeflight/settings/SettingsViewController;

    move/from16 v0, p5

    invoke-virtual {v1, v0}, Lcom/parrot/freeflight/settings/SettingsViewController;->setSelectedCategoryById(I)V

    .line 116
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/settings/QuadcopterSettingsView;->mSettingsViewController:Lcom/parrot/freeflight/settings/SettingsViewController;

    invoke-virtual {v1}, Lcom/parrot/freeflight/settings/SettingsViewController;->update()V

    .line 117
    return-void

    .line 109
    :cond_1
    new-instance v6, Lcom/parrot/freeflight/settings/ChimeraSettingsBuilder;

    invoke-direct {v6}, Lcom/parrot/freeflight/settings/ChimeraSettingsBuilder;-><init>()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/QuadcopterSettingsView;->mSettingsViewController:Lcom/parrot/freeflight/settings/SettingsViewController;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/QuadcopterSettingsView;->mSettingsViewController:Lcom/parrot/freeflight/settings/SettingsViewController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/settings/SettingsViewController;->onDestroy()V

    .line 158
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/QuadcopterSettingsView;->mSettingsViewController:Lcom/parrot/freeflight/settings/SettingsViewController;

    .line 160
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 128
    instance-of v1, p1, Lcom/parrot/freeflight/piloting/ui/settings/QuadcopterSettingsView$SavedState;

    if-nez v1, :cond_1

    .line 129
    invoke-super {p0, p1}, Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 139
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 133
    check-cast v0, Lcom/parrot/freeflight/piloting/ui/settings/QuadcopterSettingsView$SavedState;

    .line 134
    .local v0, "ss":Lcom/parrot/freeflight/piloting/ui/settings/QuadcopterSettingsView$SavedState;
    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/settings/QuadcopterSettingsView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 136
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/settings/QuadcopterSettingsView;->mSettingsViewController:Lcom/parrot/freeflight/settings/SettingsViewController;

    if-eqz v1, :cond_0

    .line 137
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/settings/QuadcopterSettingsView;->mSettingsViewController:Lcom/parrot/freeflight/settings/SettingsViewController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/settings/QuadcopterSettingsView$SavedState;->access$000(Lcom/parrot/freeflight/piloting/ui/settings/QuadcopterSettingsView$SavedState;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/settings/SettingsViewController;->setSelectedCategory(I)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 144
    invoke-super {p0}, Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 146
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/parrot/freeflight/piloting/ui/settings/QuadcopterSettingsView$SavedState;

    invoke-direct {v0, v1}, Lcom/parrot/freeflight/piloting/ui/settings/QuadcopterSettingsView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 148
    .local v0, "ss":Lcom/parrot/freeflight/piloting/ui/settings/QuadcopterSettingsView$SavedState;
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/settings/QuadcopterSettingsView;->mSettingsViewController:Lcom/parrot/freeflight/settings/SettingsViewController;

    if-eqz v2, :cond_0

    .line 149
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/settings/QuadcopterSettingsView;->mSettingsViewController:Lcom/parrot/freeflight/settings/SettingsViewController;

    invoke-virtual {v2}, Lcom/parrot/freeflight/settings/SettingsViewController;->getSelectedCategory()I

    move-result v2

    invoke-static {v0, v2}, Lcom/parrot/freeflight/piloting/ui/settings/QuadcopterSettingsView$SavedState;->access$002(Lcom/parrot/freeflight/piloting/ui/settings/QuadcopterSettingsView$SavedState;I)I

    .line 151
    :cond_0
    return-object v0
.end method

.method public bridge synthetic show(Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/piloting/RelativePositionController;Lcom/parrot/freeflight/piloting/ui/util/ProductColor;I)V
    .locals 7
    .param p1    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/parrot/freeflight/piloting/RelativePositionController;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/parrot/freeflight/piloting/ui/util/ProductColor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 35
    move-object v1, p1

    check-cast v1, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    move-object v2, p2

    check-cast v2, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    move-object v3, p3

    check-cast v3, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    move-object v0, p0

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/parrot/freeflight/piloting/ui/settings/QuadcopterSettingsView;->show(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;Lcom/parrot/freeflight/piloting/RelativePositionController;Lcom/parrot/freeflight/piloting/ui/util/ProductColor;I)V

    return-void
.end method

.method public show(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;Lcom/parrot/freeflight/piloting/RelativePositionController;Lcom/parrot/freeflight/piloting/ui/util/ProductColor;I)V
    .locals 6
    .param p1, "model"    # Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "localSettingsModel"    # Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "remoteControllerModel"    # Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "relativePositionController"    # Lcom/parrot/freeflight/piloting/RelativePositionController;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "productColor"    # Lcom/parrot/freeflight/piloting/ui/util/ProductColor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6, "category"    # I

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/ui/settings/QuadcopterSettingsView;->setVisibility(I)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p6

    .line 100
    invoke-virtual/range {v0 .. v5}, Lcom/parrot/freeflight/piloting/ui/settings/QuadcopterSettingsView;->initController(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;Lcom/parrot/freeflight/piloting/RelativePositionController;I)V

    .line 101
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/QuadcopterSettingsView;->mInfoBarTextView:Landroid/widget/TextView;

    invoke-virtual {p5}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->getProductMainColor()I

    move-result v1

    const/16 v2, 0xc8

    invoke-static {v1, v2}, Lcom/parrot/freeflight/util/AlphaColorer;->setColorAlpha(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 102
    return-void
.end method

.method public showBar(Ljava/lang/String;)V
    .locals 2
    .param p1, "info"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 170
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/QuadcopterSettingsView;->mInfoBarTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 176
    :goto_0
    return-void

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/QuadcopterSettingsView;->mInfoBarTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/QuadcopterSettingsView;->mInfoBarTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public update()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/QuadcopterSettingsView;->mSettingsViewController:Lcom/parrot/freeflight/settings/SettingsViewController;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/QuadcopterSettingsView;->mSettingsViewController:Lcom/parrot/freeflight/settings/SettingsViewController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/settings/SettingsViewController;->update()V

    .line 124
    :cond_0
    return-void
.end method
