.class public Lcom/parrot/freeflight/gallery/activity/GalleryActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "GalleryActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/gallery/fragment/AbsMediaFragment$MediasFragmentListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/gallery/activity/GalleryActivity$GalleryTab;
    }
.end annotation


# instance fields
.field private mBackButton:Landroid/widget/ImageButton;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mBestOfFragment:Lcom/parrot/freeflight/gallery/fragment/MyBestOfFragment;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mBestOfTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mCreateModeButton:Landroid/widget/Button;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mCurrentTab:Lcom/parrot/freeflight/gallery/activity/GalleryActivity$GalleryTab;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mDeleteBottomBar:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mDeleteMediaCount:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mDeleteModeButton:Lcom/parrot/freeflight/view/CheckableImageButton;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mMediaManager:Lcom/parrot/freeflight/core/academy/MediaManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mMediaTitleView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mMediasFragment:Lcom/parrot/freeflight/gallery/fragment/MediasFragment;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mMediasTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/gallery/activity/GalleryActivity;)Lcom/parrot/freeflight/view/CheckableImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gallery/activity/GalleryActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/activity/GalleryActivity;->mDeleteModeButton:Lcom/parrot/freeflight/view/CheckableImageButton;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/gallery/activity/GalleryActivity;)Lcom/parrot/freeflight/gallery/fragment/AbsMediaFragment;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gallery/activity/GalleryActivity;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/parrot/freeflight/gallery/activity/GalleryActivity;->getCurrentFragment()Lcom/parrot/freeflight/gallery/fragment/AbsMediaFragment;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/gallery/activity/GalleryActivity;Lcom/parrot/freeflight/gallery/activity/GalleryActivity$GalleryTab;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/gallery/activity/GalleryActivity;
    .param p1, "x1"    # Lcom/parrot/freeflight/gallery/activity/GalleryActivity$GalleryTab;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/gallery/activity/GalleryActivity;->selectTab(Lcom/parrot/freeflight/gallery/activity/GalleryActivity$GalleryTab;)V

    return-void
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/gallery/activity/GalleryActivity;)Lcom/parrot/freeflight/core/academy/MediaManager;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gallery/activity/GalleryActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/activity/GalleryActivity;->mMediaManager:Lcom/parrot/freeflight/core/academy/MediaManager;

    return-object v0
.end method

.method private getCurrentFragment()Lcom/parrot/freeflight/gallery/fragment/AbsMediaFragment;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 214
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/activity/GalleryActivity;->mCurrentTab:Lcom/parrot/freeflight/gallery/activity/GalleryActivity$GalleryTab;

    sget-object v1, Lcom/parrot/freeflight/gallery/activity/GalleryActivity$GalleryTab;->BEST_OF:Lcom/parrot/freeflight/gallery/activity/GalleryActivity$GalleryTab;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/gallery/activity/GalleryActivity;->mBestOfFragment:Lcom/parrot/freeflight/gallery/fragment/MyBestOfFragment;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/activity/GalleryActivity;->mMediasFragment:Lcom/parrot/freeflight/gallery/fragment/MediasFragment;

    goto :goto_0
.end method

.method public static getStartingIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/parrot/freeflight/gallery/activity/GalleryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 77
    .local v0, "intent":Landroid/content/Intent;
    return-object v0
.end method

.method private hideContextualBar()V
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/activity/GalleryActivity;->mDeleteBottomBar:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 261
    return-void
.end method

.method private selectTab(Lcom/parrot/freeflight/gallery/activity/GalleryActivity$GalleryTab;)V
    .locals 5
    .param p1, "galleryTab"    # Lcom/parrot/freeflight/gallery/activity/GalleryActivity$GalleryTab;

    .prologue
    const/4 v4, 0x0

    const v3, 0x7f070348

    .line 191
    iget-object v1, p0, Lcom/parrot/freeflight/gallery/activity/GalleryActivity;->mCurrentTab:Lcom/parrot/freeflight/gallery/activity/GalleryActivity$GalleryTab;

    if-eq v1, p1, :cond_0

    .line 192
    invoke-direct {p0}, Lcom/parrot/freeflight/gallery/activity/GalleryActivity;->getCurrentFragment()Lcom/parrot/freeflight/gallery/fragment/AbsMediaFragment;

    move-result-object v0

    .line 193
    .local v0, "currentFragment":Lcom/parrot/freeflight/gallery/fragment/AbsMediaFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gallery/fragment/AbsMediaFragment;->setSelectionMode(I)V

    .line 195
    iput-object p1, p0, Lcom/parrot/freeflight/gallery/activity/GalleryActivity;->mCurrentTab:Lcom/parrot/freeflight/gallery/activity/GalleryActivity$GalleryTab;

    .line 197
    sget-object v1, Lcom/parrot/freeflight/gallery/activity/GalleryActivity$8;->$SwitchMap$com$parrot$freeflight$gallery$activity$GalleryActivity$GalleryTab:[I

    invoke-virtual {p1}, Lcom/parrot/freeflight/gallery/activity/GalleryActivity$GalleryTab;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 210
    .end local v0    # "currentFragment":Lcom/parrot/freeflight/gallery/fragment/AbsMediaFragment;
    :cond_0
    :goto_0
    return-void

    .line 199
    .restart local v0    # "currentFragment":Lcom/parrot/freeflight/gallery/fragment/AbsMediaFragment;
    :pswitch_0
    iget-object v1, p0, Lcom/parrot/freeflight/gallery/activity/GalleryActivity;->mMediasTextView:Landroid/widget/TextView;

    invoke-static {p0, v3}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 200
    iget-object v1, p0, Lcom/parrot/freeflight/gallery/activity/GalleryActivity;->mBestOfTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 201
    iget-object v1, p0, Lcom/parrot/freeflight/gallery/activity/GalleryActivity;->mMediasFragment:Lcom/parrot/freeflight/gallery/fragment/MediasFragment;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/gallery/activity/GalleryActivity;->setFragment(Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 204
    :pswitch_1
    iget-object v1, p0, Lcom/parrot/freeflight/gallery/activity/GalleryActivity;->mBestOfTextView:Landroid/widget/TextView;

    invoke-static {p0, v3}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 205
    iget-object v1, p0, Lcom/parrot/freeflight/gallery/activity/GalleryActivity;->mMediasTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 206
    iget-object v1, p0, Lcom/parrot/freeflight/gallery/activity/GalleryActivity;->mBestOfFragment:Lcom/parrot/freeflight/gallery/fragment/MyBestOfFragment;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/gallery/activity/GalleryActivity;->setFragment(Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 197
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setFragment(Landroid/support/v4/app/Fragment;)V
    .locals 3
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/parrot/freeflight/gallery/activity/GalleryActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 219
    .local v0, "transaction":Landroid/support/v4/app/FragmentTransaction;
    const v1, 0x7f0a0178

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 220
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 221
    return-void
.end method

.method private showContextualBar(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 254
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/activity/GalleryActivity;->mDeleteBottomBar:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 257
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 86
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    const v3, 0x7f0c0039

    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/gallery/activity/GalleryActivity;->setContentView(I)V

    .line 89
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parrot/freeflight/core/CoreManager;->getMediaManager()Lcom/parrot/freeflight/core/academy/MediaManager;

    move-result-object v3

    iput-object v3, p0, Lcom/parrot/freeflight/gallery/activity/GalleryActivity;->mMediaManager:Lcom/parrot/freeflight/core/academy/MediaManager;

    .line 91
    invoke-static {}, Lcom/parrot/freeflight/gallery/fragment/MediasFragment;->newInstance()Lcom/parrot/freeflight/gallery/fragment/MediasFragment;

    move-result-object v3

    iput-object v3, p0, Lcom/parrot/freeflight/gallery/activity/GalleryActivity;->mMediasFragment:Lcom/parrot/freeflight/gallery/fragment/MediasFragment;

    .line 92
    invoke-static {}, Lcom/parrot/freeflight/gallery/fragment/MyBestOfFragment;->newInstance()Lcom/parrot/freeflight/gallery/fragment/MyBestOfFragment;

    move-result-object v3

    iput-object v3, p0, Lcom/parrot/freeflight/gallery/activity/GalleryActivity;->mBestOfFragment:Lcom/parrot/freeflight/gallery/fragment/MyBestOfFragment;

    .line 95
    const v3, 0x7f0a0175

    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/gallery/activity/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/parrot/freeflight/gallery/activity/GalleryActivity;->mBestOfTextView:Landroid/widget/TextView;

    .line 96
    const v3, 0x7f0a0179

    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/gallery/activity/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/parrot/freeflight/gallery/activity/GalleryActivity;->mMediasTextView:Landroid/widget/TextView;

    .line 97
    const v3, 0x7f0a0174

    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/gallery/activity/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/parrot/freeflight/gallery/activity/GalleryActivity;->mBackButton:Landroid/widget/ImageButton;

    .line 98
    const v3, 0x7f0a0176

    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/gallery/activity/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/parrot/freeflight/gallery/activity/GalleryActivity;->mCreateModeButton:Landroid/widget/Button;

    .line 99
    const v3, 0x7f0a0177

    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/gallery/activity/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/parrot/freeflight/view/CheckableImageButton;

    iput-object v3, p0, Lcom/parrot/freeflight/gallery/activity/GalleryActivity;->mDeleteModeButton:Lcom/parrot/freeflight/view/CheckableImageButton;

    .line 100
    const v3, 0x7f0a017c

    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/gallery/activity/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/parrot/freeflight/gallery/activity/GalleryActivity;->mMediaTitleView:Landroid/widget/TextView;

    .line 102
    const v3, 0x7f0a010c

    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/gallery/activity/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/parrot/freeflight/gallery/activity/GalleryActivity;->mDeleteBottomBar:Landroid/view/View;

    .line 103
    const v3, 0x7f0a010f

    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/gallery/activity/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/parrot/freeflight/gallery/activity/GalleryActivity;->mDeleteMediaCount:Landroid/widget/TextView;

    .line 104
    const v3, 0x7f0a010e

    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/gallery/activity/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 105
    .local v0, "deleteCancelButton":Landroid/widget/Button;
    const v3, 0x7f0a010d

    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/gallery/activity/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 107
    .local v1, "deleteDeleteButton":Landroid/widget/Button;
    invoke-static {}, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;->isAvailable()Z

    move-result v3

    if-nez v3, :cond_0

    .line 108
    const v3, 0x7f0a017a

    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/gallery/activity/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 109
    .local v2, "selectorLayout":Landroid/view/View;
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 110
    iget-object v3, p0, Lcom/parrot/freeflight/gallery/activity/GalleryActivity;->mCreateModeButton:Landroid/widget/Button;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 111
    iget-object v3, p0, Lcom/parrot/freeflight/gallery/activity/GalleryActivity;->mMediaTitleView:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 115
    .end local v2    # "selectorLayout":Landroid/view/View;
    :cond_0
    iget-object v3, p0, Lcom/parrot/freeflight/gallery/activity/GalleryActivity;->mBackButton:Landroid/widget/ImageButton;

    new-instance v4, Lcom/parrot/freeflight/gallery/activity/GalleryActivity$1;

    invoke-direct {v4, p0}, Lcom/parrot/freeflight/gallery/activity/GalleryActivity$1;-><init>(Lcom/parrot/freeflight/gallery/activity/GalleryActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v3, p0, Lcom/parrot/freeflight/gallery/activity/GalleryActivity;->mCreateModeButton:Landroid/widget/Button;

    new-instance v4, Lcom/parrot/freeflight/gallery/activity/GalleryActivity$2;

    invoke-direct {v4, p0}, Lcom/parrot/freeflight/gallery/activity/GalleryActivity$2;-><init>(Lcom/parrot/freeflight/gallery/activity/GalleryActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v3, p0, Lcom/parrot/freeflight/gallery/activity/GalleryActivity;->mDeleteModeButton:Lcom/parrot/freeflight/view/CheckableImageButton;

    new-instance v4, Lcom/parrot/freeflight/gallery/activity/GalleryActivity$3;

    invoke-direct {v4, p0}, Lcom/parrot/freeflight/gallery/activity/GalleryActivity$3;-><init>(Lcom/parrot/freeflight/gallery/activity/GalleryActivity;)V

    invoke-virtual {v3, v4}, Lcom/parrot/freeflight/view/CheckableImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object v3, p0, Lcom/parrot/freeflight/gallery/activity/GalleryActivity;->mBestOfTextView:Landroid/widget/TextView;

    new-instance v4, Lcom/parrot/freeflight/gallery/activity/GalleryActivity$4;

    invoke-direct {v4, p0}, Lcom/parrot/freeflight/gallery/activity/GalleryActivity$4;-><init>(Lcom/parrot/freeflight/gallery/activity/GalleryActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    iget-object v3, p0, Lcom/parrot/freeflight/gallery/activity/GalleryActivity;->mMediasTextView:Landroid/widget/TextView;

    new-instance v4, Lcom/parrot/freeflight/gallery/activity/GalleryActivity$5;

    invoke-direct {v4, p0}, Lcom/parrot/freeflight/gallery/activity/GalleryActivity$5;-><init>(Lcom/parrot/freeflight/gallery/activity/GalleryActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    new-instance v3, Lcom/parrot/freeflight/gallery/activity/GalleryActivity$6;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/gallery/activity/GalleryActivity$6;-><init>(Lcom/parrot/freeflight/gallery/activity/GalleryActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    new-instance v3, Lcom/parrot/freeflight/gallery/activity/GalleryActivity$7;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/gallery/activity/GalleryActivity$7;-><init>(Lcom/parrot/freeflight/gallery/activity/GalleryActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    iget-object v3, p0, Lcom/parrot/freeflight/gallery/activity/GalleryActivity;->mBestOfTextView:Landroid/widget/TextView;

    invoke-static {p0, v3}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 179
    iget-object v3, p0, Lcom/parrot/freeflight/gallery/activity/GalleryActivity;->mMediasTextView:Landroid/widget/TextView;

    invoke-static {p0, v3}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 180
    iget-object v3, p0, Lcom/parrot/freeflight/gallery/activity/GalleryActivity;->mCreateModeButton:Landroid/widget/Button;

    invoke-static {p0, v3}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 181
    iget-object v3, p0, Lcom/parrot/freeflight/gallery/activity/GalleryActivity;->mMediaTitleView:Landroid/widget/TextView;

    invoke-static {p0, v3}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 182
    iget-object v3, p0, Lcom/parrot/freeflight/gallery/activity/GalleryActivity;->mDeleteMediaCount:Landroid/widget/TextView;

    const/4 v4, 0x2

    invoke-static {p0, v3, v4}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;I)V

    .line 183
    invoke-static {p0, v0}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 184
    invoke-static {p0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 187
    sget-object v3, Lcom/parrot/freeflight/gallery/activity/GalleryActivity$GalleryTab;->MEDIA:Lcom/parrot/freeflight/gallery/activity/GalleryActivity$GalleryTab;

    invoke-direct {p0, v3}, Lcom/parrot/freeflight/gallery/activity/GalleryActivity;->selectTab(Lcom/parrot/freeflight/gallery/activity/GalleryActivity$GalleryTab;)V

    .line 188
    return-void
.end method

.method public onSelectionChanged(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/parrot/freeflight/gallery/data/GalleryMedia;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 246
    .local p1, "selection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/freeflight/gallery/data/GalleryMedia;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/activity/GalleryActivity;->mDeleteMediaCount:Landroid/widget/TextView;

    const v1, 0x7f1102ad

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/parrot/freeflight/gallery/activity/GalleryActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    return-void
.end method

.method public onSelectionModeChanged(I)V
    .locals 2
    .param p1, "mode"    # I
        .annotation build Lcom/parrot/freeflight/gallery/fragment/AbsMediaFragment$SelectionMode;
        .end annotation
    .end param

    .prologue
    .line 229
    packed-switch p1, :pswitch_data_0

    .line 242
    :goto_0
    return-void

    .line 231
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/gallery/activity/GalleryActivity;->showContextualBar(I)V

    goto :goto_0

    .line 234
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/gallery/activity/GalleryActivity;->showContextualBar(I)V

    .line 235
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/activity/GalleryActivity;->mDeleteModeButton:Lcom/parrot/freeflight/view/CheckableImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/view/CheckableImageButton;->setChecked(Z)V

    goto :goto_0

    .line 238
    :pswitch_2
    invoke-direct {p0}, Lcom/parrot/freeflight/gallery/activity/GalleryActivity;->hideContextualBar()V

    .line 239
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/activity/GalleryActivity;->mDeleteModeButton:Lcom/parrot/freeflight/view/CheckableImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/view/CheckableImageButton;->setChecked(Z)V

    goto :goto_0

    .line 229
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
