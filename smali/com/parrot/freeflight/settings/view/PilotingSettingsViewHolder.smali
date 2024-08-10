.class public Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;
.super Lcom/parrot/freeflight/settings/view/SettingsViewHolder;
.source "PilotingSettingsViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder$TabIndex;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parrot/freeflight/settings/view/SettingsViewHolder",
        "<",
        "Lcom/parrot/freeflight/settings/model/PilotingSettingsEntry",
        "<",
        "Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;",
        "Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final TAB_FILM:I = 0x0

.field public static final TAB_RACING:I = 0x1


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/settings/model/SettingsEntry",
            "<**",
            "Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;",
            "Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mFocusedColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private mNeedToFocusOnFirstItem:Z

.field private final mNormalColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private final mSelectedColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private mSelectedTab:I

.field private mSelectedTabBackground:Landroid/view/View;

.field private final mSettingsBuilder:Lcom/parrot/freeflight/settings/BebopPilotingSettingsBuilder;

.field private final mSettingsEntryAdapter:Lcom/parrot/freeflight/settings/SettingsEntryAdapter;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parrot/freeflight/settings/SettingsEntryAdapter",
            "<",
            "Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;",
            "Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;",
            ">;"
        }
    .end annotation
.end field

.field private mTabFilm:Landroid/view/View;

.field private mTabFilmIcon:Landroid/widget/TextView;

.field private mTabFilmTitle:Landroid/widget/TextView;

.field private mTabRacing:Landroid/view/View;

.field private mTabRacingIcon:Landroid/widget/TextView;

.field private mTabRacingTitle:Landroid/widget/TextView;

.field private mTabsLayout:Landroid/widget/RelativeLayout;

.field private mValue:Lcom/parrot/freeflight/settings/model/PilotingSettingsEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parrot/freeflight/settings/model/PilotingSettingsEntry",
            "<",
            "Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;",
            "Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 4
    .param p1, "itemView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 100
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/settings/view/SettingsViewHolder;-><init>(Landroid/view/View;)V

    .line 81
    iput v3, p0, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;->mSelectedTab:I

    .line 101
    new-instance v1, Lcom/parrot/freeflight/settings/BebopPilotingSettingsBuilder;

    invoke-direct {v1}, Lcom/parrot/freeflight/settings/BebopPilotingSettingsBuilder;-><init>()V

    iput-object v1, p0, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;->mSettingsBuilder:Lcom/parrot/freeflight/settings/BebopPilotingSettingsBuilder;

    .line 103
    const v1, 0x7f0a03e4

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;->mTabsLayout:Landroid/widget/RelativeLayout;

    .line 104
    const v1, 0x7f0a03e1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;->mTabFilm:Landroid/view/View;

    .line 105
    const v1, 0x7f0a03e3

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;->mTabFilmTitle:Landroid/widget/TextView;

    .line 106
    const v1, 0x7f0a03e2

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;->mTabFilmIcon:Landroid/widget/TextView;

    .line 107
    const v1, 0x7f0a03e5

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;->mTabRacing:Landroid/view/View;

    .line 108
    const v1, 0x7f0a03e7

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;->mTabRacingTitle:Landroid/widget/TextView;

    .line 109
    const v1, 0x7f0a03e6

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;->mTabRacingIcon:Landroid/widget/TextView;

    .line 110
    const v1, 0x7f0a03e8

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;->mSelectedTabBackground:Landroid/view/View;

    .line 111
    const v1, 0x7f0a03e0

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p0, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 113
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;->mTabFilmIcon:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;->mTabFilmTitle:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;->mTabRacingIcon:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;->mTabRacingTitle:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;->mContext:Landroid/content/Context;

    .line 117
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;->mContext:Landroid/content/Context;

    const v2, 0x7f0500a3

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;->mSelectedColor:I

    .line 118
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;->mContext:Landroid/content/Context;

    const v2, 0x7f0500fb

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;->mFocusedColor:I

    .line 119
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;->mContext:Landroid/content/Context;

    const v2, 0x7f050146

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;->mNormalColor:I

    .line 121
    invoke-direct {p0}, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;->updateSelectedTabMode()V

    .line 123
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;->mTabFilm:Landroid/view/View;

    new-instance v2, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder$1;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder$1;-><init>(Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 140
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;->mTabRacing:Landroid/view/View;

    new-instance v2, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder$2;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder$2;-><init>(Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 157
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 158
    .local v0, "layoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 159
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 161
    new-instance v1, Lcom/parrot/freeflight/settings/SettingsEntryAdapter;

    iget-object v2, p0, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/parrot/freeflight/settings/view/QuadcopterSettingsViewHolderFactory;

    invoke-direct {v3}, Lcom/parrot/freeflight/settings/view/QuadcopterSettingsViewHolderFactory;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/parrot/freeflight/settings/SettingsEntryAdapter;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/settings/ISettingsViewHolderFactory;)V

    iput-object v1, p0, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;->mSettingsEntryAdapter:Lcom/parrot/freeflight/settings/SettingsEntryAdapter;

    .line 162
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;->mSettingsEntryAdapter:Lcom/parrot/freeflight/settings/SettingsEntryAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 164
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;->mTabFilm:Landroid/view/View;

    invoke-static {v1, v2}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 165
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;->mTabRacing:Landroid/view/View;

    invoke-static {v1, v2}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 166
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;->mContext:Landroid/content/Context;

    const v2, 0x7f0a03eb

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 167
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;->mTabFilm:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;I)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;
    .param p1, "x1"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;->updateSelectedMode(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;

    .prologue
    .line 34
    iget v0, p0, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;->mFocusedColor:I

    return v0
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;

    .prologue
    .line 34
    iget v0, p0, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;->mSelectedTab:I

    return v0
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;

    .prologue
    .line 34
    iget v0, p0, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;->mSelectedColor:I

    return v0
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;

    .prologue
    .line 34
    iget v0, p0, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;->mNormalColor:I

    return v0
.end method

.method static synthetic access$600(Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;->mTabFilmTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;->mTabFilmIcon:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;->mTabRacingTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;->mTabRacingIcon:Landroid/widget/TextView;

    return-object v0
.end method

.method private updateSelectedMode(I)V
    .locals 3
    .param p1, "newIndex"    # I

    .prologue
    .line 220
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;->updateSelectedTab(I)V

    .line 223
    packed-switch p1, :pswitch_data_0

    .line 226
    const/4 v0, 0x0

    .line 233
    .local v0, "newMode":I
    :goto_0
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;->mValue:Lcom/parrot/freeflight/settings/model/PilotingSettingsEntry;

    invoke-virtual {v1}, Lcom/parrot/freeflight/settings/model/PilotingSettingsEntry;->getLocalSettingsModel()Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->getPresetModePreference()Lcom/parrot/freeflight/piloting/preference/PresetModePreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/parrot/freeflight/piloting/preference/PresetModePreference;->setPresetMode(I)V

    .line 234
    new-instance v1, Lcom/parrot/freeflight/piloting/preference/BebopPilotingPresetsValues;

    iget-object v2, p0, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/parrot/freeflight/piloting/preference/BebopPilotingPresetsValues;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;->mValue:Lcom/parrot/freeflight/settings/model/PilotingSettingsEntry;

    invoke-virtual {v2}, Lcom/parrot/freeflight/settings/model/PilotingSettingsEntry;->getBebopModel()Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/parrot/freeflight/piloting/preference/BebopPilotingPresetsValues;->applyValues(ILcom/parrot/freeflight/piloting/preference/BebopPilotingPresetsValues;Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;)V

    .line 235
    return-void

    .line 229
    .end local v0    # "newMode":I
    :pswitch_0
    const/4 v0, 0x1

    .restart local v0    # "newMode":I
    goto :goto_0

    .line 223
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private updateSelectedTab(I)V
    .locals 7
    .param p1, "newIndex"    # I

    .prologue
    const v6, 0x7f070076

    const v5, 0x7f070075

    .line 238
    iget v3, p0, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;->mSelectedTab:I

    if-ne v3, p1, :cond_1

    .line 274
    :cond_0
    :goto_0
    return-void

    .line 242
    :cond_1
    iput p1, p0, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;->mSelectedTab:I

    .line 245
    packed-switch p1, :pswitch_data_0

    .line 248
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;->mTabRacingTitle:Landroid/widget/TextView;

    iget v4, p0, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;->mNormalColor:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 249
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;->mTabFilmTitle:Landroid/widget/TextView;

    iget v4, p0, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;->mSelectedColor:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 250
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;->mTabRacingIcon:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 251
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;->mTabFilmIcon:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 252
    const v0, 0x7f0a03e1

    .line 264
    .local v0, "newTabId":I
    :goto_1
    new-instance v3, Landroid/support/transition/ChangeBounds;

    invoke-direct {v3}, Landroid/support/transition/ChangeBounds;-><init>()V

    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v4, v5}, Landroid/support/transition/ChangeBounds;->setDuration(J)Landroid/support/transition/Transition;

    move-result-object v2

    .line 265
    .local v2, "transition":Landroid/support/transition/Transition;
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;->mTabsLayout:Landroid/widget/RelativeLayout;

    invoke-static {v3, v2}, Landroid/support/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/support/transition/Transition;)V

    .line 266
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;->mSelectedTabBackground:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 267
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v3, 0x5

    invoke-virtual {v1, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 268
    const/4 v3, 0x7

    invoke-virtual {v1, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 269
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;->mSelectedTabBackground:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 271
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;->mValue:Lcom/parrot/freeflight/settings/model/PilotingSettingsEntry;

    if-eqz v3, :cond_0

    .line 272
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;->mValue:Lcom/parrot/freeflight/settings/model/PilotingSettingsEntry;

    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;->update(Lcom/parrot/freeflight/settings/model/PilotingSettingsEntry;)V

    goto :goto_0

    .line 255
    .end local v0    # "newTabId":I
    .end local v1    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2    # "transition":Landroid/support/transition/Transition;
    :pswitch_0
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;->mTabFilmTitle:Landroid/widget/TextView;

    iget v4, p0, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;->mNormalColor:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 256
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;->mTabRacingTitle:Landroid/widget/TextView;

    iget v4, p0, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;->mSelectedColor:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 257
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;->mTabFilmIcon:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 258
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;->mTabRacingIcon:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 259
    const v0, 0x7f0a03e5

    .restart local v0    # "newTabId":I
    goto :goto_1

    .line 245
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private updateSelectedTabMode()V
    .locals 3

    .prologue
    .line 170
    new-instance v1, Lcom/parrot/freeflight/piloting/preference/PresetModePreference;

    iget-object v2, p0, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/parrot/freeflight/piloting/preference/PresetModePreference;-><init>(Landroid/content/Context;)V

    .line 171
    .local v1, "presetModePreference":Lcom/parrot/freeflight/piloting/preference/PresetModePreference;
    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/preference/PresetModePreference;->getPresetMode()I

    move-result v0

    .line 172
    .local v0, "presetMode":I
    packed-switch v0, :pswitch_data_0

    .line 175
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;->updateSelectedTab(I)V

    .line 181
    :goto_0
    return-void

    .line 178
    :pswitch_0
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;->updateSelectedTab(I)V

    goto :goto_0

    .line 172
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public update(Lcom/parrot/freeflight/settings/model/PilotingSettingsEntry;)V
    .locals 8
    .param p1    # Lcom/parrot/freeflight/settings/model/PilotingSettingsEntry;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parrot/freeflight/settings/model/PilotingSettingsEntry",
            "<",
            "Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;",
            "Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 191
    .local p1, "value":Lcom/parrot/freeflight/settings/model/PilotingSettingsEntry;, "Lcom/parrot/freeflight/settings/model/PilotingSettingsEntry<Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;>;"
    invoke-direct {p0}, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;->updateSelectedTabMode()V

    .line 192
    iget v3, p0, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;->mSelectedTab:I

    packed-switch v3, :pswitch_data_0

    .line 195
    iget-object v4, p0, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;->mSettingsBuilder:Lcom/parrot/freeflight/settings/BebopPilotingSettingsBuilder;

    iget-object v5, p0, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/parrot/freeflight/settings/model/PilotingSettingsEntry;->getBebopModel()Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    move-result-object v6

    invoke-virtual {p1}, Lcom/parrot/freeflight/settings/model/PilotingSettingsEntry;->getLocalSettingsModel()Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    move-result-object v7

    invoke-virtual {p1}, Lcom/parrot/freeflight/settings/model/PilotingSettingsEntry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/parrot/freeflight/piloting/preference/BebopPilotingPresetsValues;

    invoke-virtual {v4, v5, v6, v7, v3}, Lcom/parrot/freeflight/settings/BebopPilotingSettingsBuilder;->buildPilotingFilmEntries(Landroid/content/Context;Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;Lcom/parrot/freeflight/piloting/preference/BebopPilotingPresetsValues;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;->mEntries:Ljava/util/List;

    .line 201
    :goto_0
    iput-object p1, p0, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;->mValue:Lcom/parrot/freeflight/settings/model/PilotingSettingsEntry;

    .line 202
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;->mSettingsEntryAdapter:Lcom/parrot/freeflight/settings/SettingsEntryAdapter;

    iget-object v4, p0, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;->mEntries:Ljava/util/List;

    iget-boolean v5, p0, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;->mNeedToFocusOnFirstItem:Z

    invoke-virtual {v3, v4, v5}, Lcom/parrot/freeflight/settings/SettingsEntryAdapter;->setSettingsEntries(Ljava/util/List;Z)V

    .line 203
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;->mNeedToFocusOnFirstItem:Z

    .line 204
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;->mEntries:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_1
    if-ge v1, v2, :cond_0

    .line 205
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;->mEntries:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/settings/model/SettingsEntry;

    .line 206
    .local v0, "entry":Lcom/parrot/freeflight/settings/model/SettingsEntry;, "Lcom/parrot/freeflight/settings/model/SettingsEntry<**Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;>;"
    invoke-virtual {p1}, Lcom/parrot/freeflight/settings/model/PilotingSettingsEntry;->getBebopModel()Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    move-result-object v3

    invoke-virtual {p1}, Lcom/parrot/freeflight/settings/model/PilotingSettingsEntry;->getLocalSettingsModel()Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/parrot/freeflight/settings/model/SettingsEntry;->update(Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/core/model/Model;)Z

    .line 207
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;->mSettingsEntryAdapter:Lcom/parrot/freeflight/settings/SettingsEntryAdapter;

    invoke-virtual {v3, v1}, Lcom/parrot/freeflight/settings/SettingsEntryAdapter;->notifyItemChanged(I)V

    .line 204
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 198
    .end local v0    # "entry":Lcom/parrot/freeflight/settings/model/SettingsEntry;, "Lcom/parrot/freeflight/settings/model/SettingsEntry<**Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;>;"
    .end local v1    # "i":I
    .end local v2    # "size":I
    :pswitch_0
    iget-object v4, p0, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;->mSettingsBuilder:Lcom/parrot/freeflight/settings/BebopPilotingSettingsBuilder;

    iget-object v5, p0, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/parrot/freeflight/settings/model/PilotingSettingsEntry;->getBebopModel()Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    move-result-object v6

    invoke-virtual {p1}, Lcom/parrot/freeflight/settings/model/PilotingSettingsEntry;->getLocalSettingsModel()Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    move-result-object v7

    invoke-virtual {p1}, Lcom/parrot/freeflight/settings/model/PilotingSettingsEntry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/parrot/freeflight/piloting/preference/BebopPilotingPresetsValues;

    invoke-virtual {v4, v5, v6, v7, v3}, Lcom/parrot/freeflight/settings/BebopPilotingSettingsBuilder;->buildPilotingRacingEntries(Landroid/content/Context;Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;Lcom/parrot/freeflight/piloting/preference/BebopPilotingPresetsValues;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;->mEntries:Ljava/util/List;

    goto :goto_0

    .line 209
    .restart local v1    # "i":I
    .restart local v2    # "size":I
    :cond_0
    return-void

    .line 192
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic update(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 34
    check-cast p1, Lcom/parrot/freeflight/settings/model/PilotingSettingsEntry;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;->update(Lcom/parrot/freeflight/settings/model/PilotingSettingsEntry;)V

    return-void
.end method
